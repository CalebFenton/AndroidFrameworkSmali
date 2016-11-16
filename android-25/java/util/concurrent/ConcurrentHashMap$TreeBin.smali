.class final Ljava/util/concurrent/ConcurrentHashMap$TreeBin;
.super Ljava/util/concurrent/ConcurrentHashMap$Node;
.source "ConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TreeBin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/ConcurrentHashMap$Node",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final LOCKSTATE:J

.field static final READER:I = 0x4

.field private static final U:Lsun/misc/Unsafe;

.field static final WAITER:I = 0x2

.field static final WRITER:I = 0x1


# instance fields
.field volatile first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile lockState:I

.field root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field volatile waiter:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@2
    invoke-virtual {v1}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    sput-boolean v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    #@b
    .line 3274
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;

    #@e
    move-result-object v1

    #@f
    sput-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@11
    .line 3278
    :try_start_0
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@13
    .line 3279
    const-class v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    #@15
    const-string/jumbo v3, "lockState"

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@1b
    move-result-object v2

    #@1c
    .line 3278
    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    #@1f
    move-result-wide v2

    #@20
    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    .line 2749
    return-void

    #@23
    :cond_0
    const/4 v1, 0x1

    #@24
    goto :goto_0

    #@25
    .line 3280
    :catch_0
    move-exception v0

    #@26
    .line 3281
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    #@28
    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@2b
    throw v1
.end method

.method constructor <init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v13, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    .line 2780
    const/4 v11, -0x2

    #@3
    invoke-direct {p0, v11, v12, v12, v12}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;)V

    #@6
    .line 2781
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8
    .line 2782
    const/4 v8, 0x0

    #@9
    .line 2783
    .local v8, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v9, p1

    #@a
    .end local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v9, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_0
    if-eqz v9, :cond_8

    #@c
    .line 2784
    iget-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@e
    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@10
    .line 2785
    .local v4, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@12
    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@14
    .line 2786
    if-nez v8, :cond_0

    #@16
    .line 2787
    iput-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@18
    .line 2788
    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@1a
    .line 2789
    move-object v8, v9

    #@1b
    .line 2783
    .local v8, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1
    move-object v9, v4

    #@1c
    goto :goto_0

    #@1d
    .line 2792
    .end local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_0
    iget-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    #@1f
    .line 2793
    .local v2, "k":Ljava/lang/Object;, "TK;"
    iget v1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@21
    .line 2794
    .local v1, "h":I
    const/4 v3, 0x0

    #@22
    .line 2795
    .local v3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v8

    #@23
    .line 2797
    .end local v3    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    iget-object v7, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    #@25
    .line 2798
    .local v7, "pk":Ljava/lang/Object;, "TK;"
    iget v6, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@27
    .local v6, "ph":I
    if-le v6, v1, :cond_3

    #@29
    .line 2799
    const/4 v0, -0x1

    #@2a
    .line 2806
    .local v0, "dir":I
    :cond_2
    :goto_2
    move-object v10, v5

    #@2b
    .line 2807
    .local v10, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v0, :cond_6

    #@2d
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@2f
    :goto_3
    if-nez v5, :cond_1

    #@31
    .line 2808
    iput-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@33
    .line 2809
    if-gtz v0, :cond_7

    #@35
    .line 2810
    iput-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@37
    .line 2813
    :goto_4
    invoke-static {v8, v9}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@3a
    move-result-object v8

    #@3b
    .restart local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_1

    #@3c
    .line 2800
    .end local v0    # "dir":I
    .end local v8    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    if-ge v6, v1, :cond_4

    #@3e
    .line 2801
    const/4 v0, 0x1

    #@3f
    .restart local v0    # "dir":I
    goto :goto_2

    #@40
    .line 2802
    .end local v0    # "dir":I
    :cond_4
    if-nez v3, :cond_5

    #@42
    .line 2803
    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    #@45
    move-result-object v3

    #@46
    .local v3, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v3, :cond_5

    #@48
    .line 2805
    .end local v3    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_5
    invoke-static {v2, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    #@4b
    move-result v0

    #@4c
    .restart local v0    # "dir":I
    goto :goto_2

    #@4d
    .line 2804
    .end local v0    # "dir":I
    :cond_5
    invoke-static {v3, v2, v7}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    #@50
    move-result v0

    #@51
    .restart local v0    # "dir":I
    if-nez v0, :cond_2

    #@53
    goto :goto_5

    #@54
    .line 2807
    .restart local v10    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    iget-object v5, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@56
    goto :goto_3

    #@57
    .line 2812
    :cond_7
    iput-object v9, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@59
    goto :goto_4

    #@5a
    .line 2819
    .end local v0    # "dir":I
    .end local v1    # "h":I
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v4    # "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "ph":I
    .end local v7    # "pk":Ljava/lang/Object;, "TK;"
    .end local v10    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8
    iput-object v8, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5c
    .line 2820
    sget-boolean v11, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    #@5e
    if-nez v11, :cond_9

    #@60
    iget-object v11, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@62
    invoke-static {v11}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@65
    move-result v11

    #@66
    if-nez v11, :cond_9

    #@68
    new-instance v11, Ljava/lang/AssertionError;

    #@6a
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@6d
    throw v11

    #@6e
    .line 2779
    :cond_9
    return-void
.end method

.method static balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 3160
    :goto_0
    if-eqz p1, :cond_0

    #@4
    if-ne p1, p0, :cond_1

    #@6
    .line 3161
    :cond_0
    return-object p0

    #@7
    .line 3162
    :cond_1
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@9
    .local v2, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_2

    #@b
    .line 3163
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@d
    .line 3164
    return-object p1

    #@e
    .line 3166
    :cond_2
    iget-boolean v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@10
    if-eqz v5, :cond_3

    #@12
    .line 3167
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@14
    .line 3168
    return-object p0

    #@15
    .line 3170
    :cond_3
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@17
    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v3, p1, :cond_10

    #@19
    .line 3171
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1b
    .local v4, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v4, :cond_4

    #@1d
    iget-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@1f
    if-eqz v5, :cond_4

    #@21
    .line 3172
    iput-boolean v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@23
    .line 3173
    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@25
    .line 3174
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@28
    move-result-object p0

    #@29
    .line 3175
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@2b
    if-nez v2, :cond_5

    #@2d
    const/4 v4, 0x0

    #@2e
    .line 3177
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_4
    :goto_1
    if-nez v4, :cond_6

    #@30
    .line 3178
    move-object p1, v2

    #@31
    goto :goto_0

    #@32
    .line 3175
    .restart local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_5
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@34
    goto :goto_1

    #@35
    .line 3180
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    iget-object v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@37
    .local v0, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@39
    .line 3181
    .local v1, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_a

    #@3b
    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@3d
    if-eqz v5, :cond_a

    #@3f
    .line 3187
    :cond_7
    if-eqz v1, :cond_c

    #@41
    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@43
    if-eqz v5, :cond_c

    #@45
    .line 3195
    :goto_2
    if-eqz v4, :cond_8

    #@47
    .line 3196
    if-nez v2, :cond_f

    #@49
    move v5, v6

    #@4a
    :goto_3
    iput-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@4c
    .line 3197
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4e
    if-eqz v1, :cond_8

    #@50
    .line 3198
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@52
    .line 3200
    :cond_8
    if-eqz v2, :cond_9

    #@54
    .line 3201
    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@56
    .line 3202
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@59
    move-result-object p0

    #@5a
    .line 3204
    :cond_9
    move-object p1, p0

    #@5b
    goto :goto_0

    #@5c
    .line 3182
    :cond_a
    if-eqz v0, :cond_b

    #@5e
    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@60
    if-nez v5, :cond_7

    #@62
    .line 3183
    :cond_b
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@64
    .line 3184
    move-object p1, v2

    #@65
    .line 3182
    goto :goto_0

    #@66
    .line 3188
    :cond_c
    if-eqz v0, :cond_d

    #@68
    .line 3189
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@6a
    .line 3190
    :cond_d
    iput-boolean v7, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@6c
    .line 3191
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6f
    move-result-object p0

    #@70
    .line 3192
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@72
    if-nez v2, :cond_e

    #@74
    .line 3193
    const/4 v4, 0x0

    #@75
    .local v4, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_2

    #@76
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@78
    .local v4, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_2

    #@79
    .line 3196
    .end local v4    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_f
    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@7b
    goto :goto_3

    #@7c
    .line 3209
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_10
    if-eqz v3, :cond_11

    #@7e
    iget-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@80
    if-eqz v5, :cond_11

    #@82
    .line 3210
    iput-boolean v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@84
    .line 3211
    iput-boolean v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@86
    .line 3212
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@89
    move-result-object p0

    #@8a
    .line 3213
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8c
    if-nez v2, :cond_12

    #@8e
    const/4 v3, 0x0

    #@8f
    .line 3215
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_11
    :goto_4
    if-nez v3, :cond_13

    #@91
    .line 3216
    move-object p1, v2

    #@92
    goto/16 :goto_0

    #@94
    .line 3213
    .restart local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_12
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@96
    goto :goto_4

    #@97
    .line 3218
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_13
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@99
    .restart local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@9b
    .line 3219
    .restart local v1    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_17

    #@9d
    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@9f
    if-eqz v5, :cond_17

    #@a1
    .line 3225
    :cond_14
    if-eqz v0, :cond_19

    #@a3
    iget-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@a5
    if-eqz v5, :cond_19

    #@a7
    .line 3233
    :goto_5
    if-eqz v3, :cond_15

    #@a9
    .line 3234
    if-nez v2, :cond_1c

    #@ab
    move v5, v6

    #@ac
    :goto_6
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@ae
    .line 3235
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b0
    if-eqz v0, :cond_15

    #@b2
    .line 3236
    iput-boolean v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@b4
    .line 3238
    :cond_15
    if-eqz v2, :cond_16

    #@b6
    .line 3239
    iput-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@b8
    .line 3240
    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@bb
    move-result-object p0

    #@bc
    .line 3242
    :cond_16
    move-object p1, p0

    #@bd
    goto/16 :goto_0

    #@bf
    .line 3220
    :cond_17
    if-eqz v1, :cond_18

    #@c1
    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@c3
    if-nez v5, :cond_14

    #@c5
    .line 3221
    :cond_18
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@c7
    .line 3222
    move-object p1, v2

    #@c8
    .line 3220
    goto/16 :goto_0

    #@ca
    .line 3226
    :cond_19
    if-eqz v1, :cond_1a

    #@cc
    .line 3227
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@ce
    .line 3228
    :cond_1a
    iput-boolean v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@d0
    .line 3229
    invoke-static {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@d3
    move-result-object p0

    #@d4
    .line 3230
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@d6
    if-nez v2, :cond_1b

    #@d8
    .line 3231
    const/4 v3, 0x0

    #@d9
    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    #@da
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1b
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@dc
    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_5

    #@dd
    .line 3234
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1c
    iget-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@df
    goto :goto_6
.end method

.method static balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 3104
    iput-boolean v6, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@4
    .line 3106
    :cond_0
    :goto_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6
    .local v0, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1

    #@8
    .line 3107
    iput-boolean v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@a
    .line 3108
    return-object p1

    #@b
    .line 3110
    :cond_1
    iget-boolean v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@d
    if-eqz v4, :cond_2

    #@f
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@11
    .local v1, "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_3

    #@13
    .line 3111
    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    return-object p0

    #@14
    .line 3112
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_3
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@16
    .local v2, "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v0, v2, :cond_7

    #@18
    .line 3113
    iget-object v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1a
    .local v3, "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_4

    #@1c
    iget-boolean v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@1e
    if-eqz v4, :cond_4

    #@20
    .line 3114
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@22
    .line 3115
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@24
    .line 3116
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@26
    .line 3117
    move-object p1, v1

    #@27
    goto :goto_0

    #@28
    .line 3120
    :cond_4
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@2a
    if-ne p1, v4, :cond_5

    #@2c
    .line 3121
    move-object p1, v0

    #@2d
    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@30
    move-result-object p0

    #@31
    .line 3122
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@33
    if-nez v0, :cond_6

    #@35
    const/4 v1, 0x0

    #@36
    .line 3124
    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_5
    :goto_1
    if-eqz v0, :cond_0

    #@38
    .line 3125
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@3a
    .line 3126
    if-eqz v1, :cond_0

    #@3c
    .line 3127
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@3e
    .line 3128
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@41
    move-result-object p0

    #@42
    goto :goto_0

    #@43
    .line 3122
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_6
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@45
    goto :goto_1

    #@46
    .line 3134
    .end local v3    # "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_7
    if-eqz v2, :cond_8

    #@48
    iget-boolean v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@4a
    if-eqz v4, :cond_8

    #@4c
    .line 3135
    iput-boolean v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@4e
    .line 3136
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@50
    .line 3137
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@52
    .line 3138
    move-object p1, v1

    #@53
    goto :goto_0

    #@54
    .line 3141
    :cond_8
    iget-object v4, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@56
    if-ne p1, v4, :cond_9

    #@58
    .line 3142
    move-object p1, v0

    #@59
    invoke-static {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5c
    move-result-object p0

    #@5d
    .line 3143
    iget-object v0, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5f
    if-nez v0, :cond_a

    #@61
    const/4 v1, 0x0

    #@62
    .line 3145
    .end local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9
    :goto_2
    if-eqz v0, :cond_0

    #@64
    .line 3146
    iput-boolean v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@66
    .line 3147
    if-eqz v1, :cond_0

    #@68
    .line 3148
    iput-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@6a
    .line 3149
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6d
    move-result-object p0

    #@6e
    goto :goto_0

    #@6f
    .line 3143
    .restart local v1    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@71
    goto :goto_2
.end method

.method static checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v7, 0x0

    #@1
    .line 3253
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@3
    .local v3, "tp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5
    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@7
    .line 3254
    .local v4, "tr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@9
    .local v0, "tb":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@b
    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@d
    .line 3255
    .local v2, "tn":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_0

    #@f
    iget-object v5, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@11
    if-eq v5, p0, :cond_0

    #@13
    .line 3256
    return v7

    #@14
    .line 3257
    :cond_0
    if-eqz v2, :cond_1

    #@16
    iget-object v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@18
    if-eq v5, p0, :cond_1

    #@1a
    .line 3258
    return v7

    #@1b
    .line 3259
    :cond_1
    if-eqz v3, :cond_2

    #@1d
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1f
    if-eq p0, v5, :cond_2

    #@21
    iget-object v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@23
    if-eq p0, v5, :cond_2

    #@25
    .line 3260
    return v7

    #@26
    .line 3261
    :cond_2
    if-eqz v1, :cond_4

    #@28
    iget-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@2a
    if-ne v5, p0, :cond_3

    #@2c
    iget v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@2e
    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@30
    if-le v5, v6, :cond_4

    #@32
    .line 3262
    :cond_3
    return v7

    #@33
    .line 3263
    :cond_4
    if-eqz v4, :cond_6

    #@35
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@37
    if-ne v5, p0, :cond_5

    #@39
    iget v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@3b
    iget v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@3d
    if-ge v5, v6, :cond_6

    #@3f
    .line 3264
    :cond_5
    return v7

    #@40
    .line 3265
    :cond_6
    iget-boolean v5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@42
    if-eqz v5, :cond_7

    #@44
    if-eqz v1, :cond_7

    #@46
    iget-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@48
    if-eqz v5, :cond_7

    #@4a
    if-eqz v4, :cond_7

    #@4c
    iget-boolean v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@4e
    if-eqz v5, :cond_7

    #@50
    .line 3266
    return v7

    #@51
    .line 3267
    :cond_7
    if-eqz v1, :cond_8

    #@53
    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@56
    move-result v5

    #@57
    if-eqz v5, :cond_a

    #@59
    .line 3269
    :cond_8
    if-eqz v4, :cond_9

    #@5b
    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@5e
    move-result v5

    #@5f
    if-eqz v5, :cond_b

    #@61
    .line 3271
    :cond_9
    const/4 v5, 0x1

    #@62
    return v5

    #@63
    .line 3268
    :cond_a
    return v7

    #@64
    .line 3270
    :cond_b
    return v7
.end method

.method private final contendedLock()V
    .locals 7

    #@0
    .prologue
    .line 2842
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    const/4 v6, 0x0

    #@1
    .line 2844
    .local v6, "waiting":Z
    :cond_0
    :goto_0
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    #@3
    .local v4, "s":I
    and-int/lit8 v0, v4, -0x3

    #@5
    if-nez v0, :cond_2

    #@7
    .line 2845
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@9
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    #@b
    const/4 v5, 0x1

    #@c
    move-object v1, p0

    #@d
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 2846
    if-eqz v6, :cond_1

    #@15
    .line 2847
    const/4 v0, 0x0

    #@16
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    #@18
    .line 2848
    :cond_1
    return-void

    #@19
    .line 2851
    :cond_2
    and-int/lit8 v0, v4, 0x2

    #@1b
    if-nez v0, :cond_3

    #@1d
    .line 2852
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@1f
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    #@21
    or-int/lit8 v5, v4, 0x2

    #@23
    move-object v1, p0

    #@24
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@27
    move-result v0

    #@28
    if-eqz v0, :cond_0

    #@2a
    .line 2853
    const/4 v6, 0x1

    #@2b
    .line 2854
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    #@31
    goto :goto_0

    #@32
    .line 2857
    :cond_3
    if-eqz v6, :cond_0

    #@34
    .line 2858
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    #@37
    goto :goto_0
.end method

.method private final lockRoot()V
    .locals 6

    #@0
    .prologue
    .line 2827
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@2
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    #@4
    const/4 v4, 0x0

    #@5
    const/4 v5, 0x1

    #@6
    move-object v1, p0

    #@7
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 2828
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    #@10
    .line 2826
    :cond_0
    return-void
.end method

.method static rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3069
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1

    #@2
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4
    .local v1, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_1

    #@6
    .line 3070
    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8
    iput-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a
    .local v2, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_0

    #@c
    .line 3071
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@e
    .line 3072
    :cond_0
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@10
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@12
    .local v0, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_2

    #@14
    .line 3073
    move-object p0, v1

    #@15
    const/4 v3, 0x0

    #@16
    iput-boolean v3, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@18
    .line 3078
    :goto_0
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1a
    .line 3079
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1c
    .line 3081
    .end local v0    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    return-object p0

    #@1d
    .line 3074
    .restart local v0    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1f
    if-ne v3, p1, :cond_3

    #@21
    .line 3075
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@23
    goto :goto_0

    #@24
    .line 3077
    :cond_3
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@26
    goto :goto_0
.end method

.method static rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 3087
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_1

    #@2
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4
    .local v0, "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_1

    #@6
    .line 3088
    iget-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a
    .local v1, "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_0

    #@c
    .line 3089
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@e
    .line 3090
    :cond_0
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@10
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@12
    .local v2, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v2, :cond_2

    #@14
    .line 3091
    move-object p0, v0

    #@15
    const/4 v3, 0x0

    #@16
    iput-boolean v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@18
    .line 3096
    :goto_0
    iput-object p1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1a
    .line 3097
    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1c
    .line 3099
    .end local v0    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v1    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_1
    return-object p0

    #@1d
    .line 3092
    .restart local v0    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v1    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v2    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_2
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1f
    if-ne v3, p1, :cond_3

    #@21
    .line 3093
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@23
    goto :goto_0

    #@24
    .line 3095
    :cond_3
    iput-object v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@26
    goto :goto_0
.end method

.method static tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2768
    if-eqz p0, :cond_0

    #@2
    if-nez p1, :cond_2

    #@4
    .line 2771
    :cond_0
    :goto_0
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@7
    move-result v1

    #@8
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    #@b
    move-result v2

    #@c
    if-gt v1, v2, :cond_3

    #@e
    .line 2772
    const/4 v0, -0x1

    #@f
    .line 2773
    .local v0, "d":I
    :cond_1
    :goto_1
    return v0

    #@10
    .line 2769
    .end local v0    # "d":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    .line 2770
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    .line 2769
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    .restart local v0    # "d":I
    if-nez v0, :cond_1

    #@26
    goto :goto_0

    #@27
    .line 2772
    .end local v0    # "d":I
    :cond_3
    const/4 v0, 0x1

    #@28
    .restart local v0    # "d":I
    goto :goto_1
.end method

.method private final unlockRoot()V
    .locals 1

    #@0
    .prologue
    .line 2835
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    #@3
    .line 2834
    return-void
.end method


# virtual methods
.method final find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .locals 11
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2868
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    if-eqz p2, :cond_7

    #@2
    .line 2869
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4
    .local v6, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_0
    :goto_0
    if-eqz v6, :cond_7

    #@6
    .line 2871
    iget v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    #@8
    .local v4, "s":I
    and-int/lit8 v0, v4, 0x3

    #@a
    if-eqz v0, :cond_3

    #@c
    .line 2872
    iget v0, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    #@e
    if-ne v0, p1, :cond_2

    #@10
    .line 2873
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    #@12
    .local v7, "ek":Ljava/lang/Object;, "TK;"
    if-eq v7, p2, :cond_1

    #@14
    if-eqz v7, :cond_2

    #@16
    invoke-virtual {p2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v0

    #@1a
    .line 2872
    if-eqz v0, :cond_2

    #@1c
    .line 2874
    :cond_1
    return-object v6

    #@1d
    .line 2875
    .end local v7    # "ek":Ljava/lang/Object;, "TK;"
    :cond_2
    iget-object v6, v6, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@1f
    goto :goto_0

    #@20
    .line 2877
    :cond_3
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@22
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    #@24
    .line 2878
    add-int/lit8 v5, v4, 0x4

    #@26
    move-object v1, p0

    #@27
    .line 2877
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_0

    #@2d
    .line 2881
    :try_start_0
    iget-object v9, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .local v9, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v9, :cond_5

    #@31
    const/4 v8, 0x0

    #@32
    .line 2885
    :goto_1
    sget-object v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@34
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    #@36
    const/4 v1, -0x4

    #@37
    invoke-virtual {v0, p0, v2, v3, v1}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@3a
    move-result v0

    #@3b
    .line 2886
    const/4 v1, 0x6

    #@3c
    .line 2885
    if-ne v0, v1, :cond_4

    #@3e
    .line 2886
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    #@40
    .local v10, "w":Ljava/lang/Thread;
    if-eqz v10, :cond_4

    #@42
    .line 2887
    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@45
    .line 2889
    .end local v10    # "w":Ljava/lang/Thread;
    :cond_4
    return-object v8

    #@46
    .line 2882
    :cond_5
    const/4 v0, 0x0

    #@47
    :try_start_1
    invoke-virtual {v9, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    move-result-object v8

    #@4b
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_1

    #@4c
    .line 2883
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v0

    #@4d
    .line 2885
    sget-object v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->U:Lsun/misc/Unsafe;

    #@4f
    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    #@51
    const/4 v5, -0x4

    #@52
    invoke-virtual {v1, p0, v2, v3, v5}, Lsun/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    #@55
    move-result v1

    #@56
    .line 2886
    const/4 v2, 0x6

    #@57
    .line 2885
    if-ne v1, v2, :cond_6

    #@59
    .line 2886
    iget-object v10, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    #@5b
    .restart local v10    # "w":Ljava/lang/Thread;
    if-eqz v10, :cond_6

    #@5d
    .line 2887
    invoke-static {v10}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    #@60
    .line 2883
    .end local v10    # "w":Ljava/lang/Thread;
    :cond_6
    throw v0

    #@61
    .line 2893
    .end local v4    # "s":I
    .end local v6    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_7
    const/4 v0, 0x0

    #@62
    return-object v0
.end method

.method final putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .locals 16
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2901
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    const/4 v10, 0x0

    #@1
    .line 2902
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v15, 0x0

    #@2
    .line 2903
    .local v15, "searched":Z
    move-object/from16 v0, p0

    #@4
    iget-object v11, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6
    .line 2905
    .end local v10    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v11, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_0
    if-nez v11, :cond_1

    #@8
    .line 2906
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a
    const/4 v6, 0x0

    #@b
    const/4 v7, 0x0

    #@c
    move/from16 v3, p1

    #@e
    move-object/from16 v4, p2

    #@10
    move-object/from16 v5, p3

    #@12
    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@15
    move-object/from16 v0, p0

    #@17
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@19
    move-object/from16 v0, p0

    #@1b
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1d
    .line 2953
    :goto_0
    sget-boolean v3, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    #@1f
    if-nez v3, :cond_f

    #@21
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@25
    invoke-static {v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@28
    move-result v3

    #@29
    if-nez v3, :cond_f

    #@2b
    new-instance v3, Ljava/lang/AssertionError;

    #@2d
    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    #@30
    throw v3

    #@31
    .line 2909
    :cond_1
    iget v12, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    #@33
    .local v12, "ph":I
    move/from16 v0, p1

    #@35
    if-le v12, v0, :cond_4

    #@37
    .line 2910
    const/4 v9, -0x1

    #@38
    .line 2930
    .local v9, "dir":I
    :cond_2
    :goto_1
    move-object v7, v11

    #@39
    .line 2931
    .local v7, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v9, :cond_c

    #@3b
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@3d
    :goto_2
    if-nez v11, :cond_0

    #@3f
    .line 2932
    move-object/from16 v0, p0

    #@41
    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@43
    .line 2933
    .local v6, "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@45
    move/from16 v3, p1

    #@47
    move-object/from16 v4, p2

    #@49
    move-object/from16 v5, p3

    #@4b
    invoke-direct/range {v2 .. v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    #@4e
    .local v2, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object/from16 v0, p0

    #@50
    iput-object v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@52
    .line 2934
    if-eqz v6, :cond_3

    #@54
    .line 2935
    iput-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@56
    .line 2936
    :cond_3
    if-gtz v9, :cond_d

    #@58
    .line 2937
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5a
    .line 2940
    :goto_3
    iget-boolean v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@5c
    if-nez v3, :cond_e

    #@5e
    .line 2941
    const/4 v3, 0x1

    #@5f
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@61
    goto :goto_0

    #@62
    .line 2911
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "dir":I
    :cond_4
    move/from16 v0, p1

    #@64
    if-ge v12, v0, :cond_5

    #@66
    .line 2912
    const/4 v9, 0x1

    #@67
    .restart local v9    # "dir":I
    goto :goto_1

    #@68
    .line 2913
    .end local v9    # "dir":I
    :cond_5
    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    #@6a
    .local v13, "pk":Ljava/lang/Object;, "TK;"
    move-object/from16 v0, p2

    #@6c
    if-eq v13, v0, :cond_6

    #@6e
    if-eqz v13, :cond_7

    #@70
    move-object/from16 v0, p2

    #@72
    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v3

    #@76
    if-eqz v3, :cond_7

    #@78
    .line 2914
    :cond_6
    return-object v11

    #@79
    .line 2915
    :cond_7
    if-nez v10, :cond_9

    #@7b
    .line 2916
    invoke-static/range {p2 .. p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    #@7e
    move-result-object v10

    #@7f
    .local v10, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_9

    #@81
    .line 2918
    .end local v10    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    if-nez v15, :cond_b

    #@83
    .line 2920
    const/4 v15, 0x1

    #@84
    .line 2921
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@86
    .local v8, "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_a

    #@88
    .line 2922
    move/from16 v0, p1

    #@8a
    move-object/from16 v1, p2

    #@8c
    invoke-virtual {v8, v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8f
    move-result-object v14

    #@90
    .local v14, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v14, :cond_a

    #@92
    .line 2925
    :cond_8
    return-object v14

    #@93
    .line 2917
    .end local v8    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9
    move-object/from16 v0, p2

    #@95
    invoke-static {v10, v0, v13}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    #@98
    move-result v9

    #@99
    .restart local v9    # "dir":I
    if-nez v9, :cond_2

    #@9b
    goto :goto_4

    #@9c
    .line 2923
    .end local v9    # "dir":I
    .restart local v8    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_a
    iget-object v8, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@9e
    if-eqz v8, :cond_b

    #@a0
    .line 2924
    move/from16 v0, p1

    #@a2
    move-object/from16 v1, p2

    #@a4
    invoke-virtual {v8, v0, v1, v10}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a7
    move-result-object v14

    #@a8
    .restart local v14    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v14, :cond_8

    #@aa
    .line 2927
    .end local v8    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v14    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b
    move-object/from16 v0, p2

    #@ac
    invoke-static {v0, v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    #@af
    move-result v9

    #@b0
    .restart local v9    # "dir":I
    goto :goto_1

    #@b1
    .line 2931
    .end local v13    # "pk":Ljava/lang/Object;, "TK;"
    .restart local v7    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c
    iget-object v11, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b3
    goto :goto_2

    #@b4
    .line 2939
    .restart local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b6
    goto :goto_3

    #@b7
    .line 2943
    :cond_e
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    #@ba
    .line 2945
    :try_start_0
    move-object/from16 v0, p0

    #@bc
    iget-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@be
    invoke-static {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@c1
    move-result-object v3

    #@c2
    move-object/from16 v0, p0

    #@c4
    iput-object v3, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c6
    .line 2947
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    #@c9
    goto/16 :goto_0

    #@cb
    .line 2946
    :catchall_0
    move-exception v3

    #@cc
    .line 2947
    invoke-direct/range {p0 .. p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    #@cf
    .line 2946
    throw v3

    #@d0
    .line 2954
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "dir":I
    .end local v12    # "ph":I
    :cond_f
    const/4 v3, 0x0

    #@d1
    return-object v3
.end method

.method final removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode",
            "<TK;TV;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2968
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>.TreeBin<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@2
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4
    .line 2969
    .local v1, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6
    .line 2971
    .local v5, "pred":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v5, :cond_1

    #@8
    .line 2972
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a
    .line 2975
    :goto_0
    if-eqz v1, :cond_0

    #@c
    .line 2976
    iput-object v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@e
    .line 2977
    :cond_0
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@10
    if-nez v13, :cond_2

    #@12
    .line 2978
    const/4 v13, 0x0

    #@13
    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@15
    .line 2979
    const/4 v13, 0x1

    #@16
    return v13

    #@17
    .line 2974
    :cond_1
    iput-object v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    #@19
    goto :goto_0

    #@1a
    .line 2981
    :cond_2
    iget-object v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@1c
    .local v6, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v6, :cond_3

    #@1e
    iget-object v13, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@20
    if-nez v13, :cond_4

    #@22
    .line 2983
    :cond_3
    const/4 v13, 0x1

    #@23
    return v13

    #@24
    .line 2982
    :cond_4
    iget-object v8, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@26
    .local v8, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_3

    #@28
    iget-object v13, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@2a
    if-eqz v13, :cond_3

    #@2c
    .line 2984
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    #@2f
    .line 2987
    :try_start_0
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@31
    .line 2988
    .local v2, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@33
    .line 2989
    .local v4, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_12

    #@35
    if-eqz v4, :cond_12

    #@37
    .line 2990
    move-object v9, v4

    #@38
    .line 2991
    .local v9, "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_1
    iget-object v10, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@3a
    .local v10, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v10, :cond_5

    #@3c
    .line 2992
    move-object v9, v10

    #@3d
    goto :goto_1

    #@3e
    .line 2993
    :cond_5
    iget-boolean v0, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@40
    .local v0, "c":Z
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@42
    iput-boolean v13, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@44
    iput-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@46
    .line 2994
    iget-object v12, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@48
    .line 2995
    .local v12, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4a
    .line 2996
    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v9, v4, :cond_c

    #@4c
    .line 2997
    iput-object v9, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@4e
    .line 2998
    iput-object p1, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@50
    .line 3011
    :cond_6
    :goto_2
    const/4 v13, 0x0

    #@51
    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@53
    .line 3012
    iput-object v12, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@55
    if-eqz v12, :cond_7

    #@57
    .line 3013
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@59
    .line 3014
    :cond_7
    iput-object v2, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5b
    if-eqz v2, :cond_8

    #@5d
    .line 3015
    iput-object v9, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@5f
    .line 3016
    :cond_8
    iput-object v3, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@61
    if-nez v3, :cond_f

    #@63
    .line 3017
    move-object v6, v9

    #@64
    .line 3022
    :goto_3
    if-eqz v12, :cond_11

    #@66
    .line 3023
    move-object v7, v12

    #@67
    .line 3033
    .end local v0    # "c":Z
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_4
    if-eq v7, p1, :cond_9

    #@69
    .line 3034
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6b
    iput-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@6d
    .line 3035
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v3, :cond_15

    #@6f
    .line 3036
    move-object v6, v7

    #@70
    .line 3041
    :goto_5
    const/4 v13, 0x0

    #@71
    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@73
    const/4 v13, 0x0

    #@74
    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@76
    const/4 v13, 0x0

    #@77
    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@79
    .line 3044
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_9
    iget-boolean v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    #@7b
    if-eqz v13, :cond_17

    #@7d
    move-object v13, v6

    #@7e
    :goto_6
    iput-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@80
    .line 3046
    if-ne p1, v7, :cond_b

    #@82
    .line 3048
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@84
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v3, :cond_b

    #@86
    .line 3049
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@88
    if-ne p1, v13, :cond_18

    #@8a
    .line 3050
    const/4 v13, 0x0

    #@8b
    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@8d
    .line 3053
    :cond_a
    :goto_7
    const/4 v13, 0x0

    #@8e
    iput-object v13, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@90
    .line 3057
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_b
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    #@93
    .line 3059
    sget-boolean v13, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->-assertionsDisabled:Z

    #@95
    if-nez v13, :cond_19

    #@97
    iget-object v13, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@99
    invoke-static {v13}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    #@9c
    move-result v13

    #@9d
    if-nez v13, :cond_19

    #@9f
    new-instance v13, Ljava/lang/AssertionError;

    #@a1
    invoke-direct {v13}, Ljava/lang/AssertionError;-><init>()V

    #@a4
    throw v13

    #@a5
    .line 3001
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v0    # "c":Z
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_c
    :try_start_1
    iget-object v11, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a7
    .line 3002
    .local v11, "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v11, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@a9
    if-eqz v11, :cond_d

    #@ab
    .line 3003
    iget-object v13, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@ad
    if-ne v9, v13, :cond_e

    #@af
    .line 3004
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b1
    .line 3008
    :cond_d
    :goto_8
    iput-object v4, v9, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@b3
    if-eqz v4, :cond_6

    #@b5
    .line 3009
    iput-object v9, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@b7
    goto :goto_2

    #@b8
    .line 3056
    .end local v0    # "c":Z
    .end local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_0
    move-exception v13

    #@b9
    .line 3057
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    #@bc
    .line 3056
    throw v13

    #@bd
    .line 3006
    .restart local v0    # "c":Z
    .restart local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v4    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_e
    :try_start_2
    iput-object p1, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@bf
    goto :goto_8

    #@c0
    .line 3018
    .end local v11    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_f
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@c2
    if-ne p1, v13, :cond_10

    #@c4
    .line 3019
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@c6
    goto :goto_3

    #@c7
    .line 3021
    :cond_10
    iput-object v9, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@c9
    goto :goto_3

    #@ca
    .line 3025
    :cond_11
    move-object v7, p1

    #@cb
    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_4

    #@cc
    .line 3027
    .end local v0    # "c":Z
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_12
    if-eqz v2, :cond_13

    #@ce
    .line 3028
    move-object v7, v2

    #@cf
    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_4

    #@d0
    .line 3029
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_13
    if-eqz v4, :cond_14

    #@d2
    .line 3030
    move-object v7, v4

    #@d3
    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_4

    #@d4
    .line 3032
    .end local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_14
    move-object v7, p1

    #@d5
    .restart local v7    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_4

    #@d6
    .line 3037
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_15
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@d8
    if-ne p1, v13, :cond_16

    #@da
    .line 3038
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@dc
    goto :goto_5

    #@dd
    .line 3040
    :cond_16
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@df
    goto :goto_5

    #@e0
    .line 3044
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_17
    invoke-static {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@e3
    move-result-object v13

    #@e4
    goto :goto_6

    #@e5
    .line 3051
    .restart local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_18
    iget-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    #@e7
    if-ne p1, v13, :cond_a

    #@e9
    .line 3052
    const/4 v13, 0x0

    #@ea
    iput-object v13, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@ec
    goto :goto_7

    #@ed
    .line 3060
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_19
    const/4 v13, 0x0

    #@ee
    return v13
.end method
