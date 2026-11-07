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
        "Ljava/util/concurrent/ConcurrentHashMap$Node<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o LOCKSTATE:J

.field static final greylist-max-o READER:I = 0x4

.field static final greylist-max-o WAITER:I = 0x2

.field private static final blacklist WAITERTHREAD:J

.field static final greylist-max-o WRITER:I = 0x1


# instance fields
.field volatile greylist-max-o first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o lockState:I

.field greylist-max-o root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field volatile greylist-max-o waiter:Ljava/lang/Thread;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 2778
    const-class v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 3301
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    .line 3302
    const-class v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;

    const-string v2, "lockState"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    .line 3303
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    .line 3304
    const-string v2, "waiter"

    invoke-virtual {v0, v1, v2}, Ljdk/internal/misc/Unsafe;->objectFieldOffset(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->WAITERTHREAD:J

    .line 3303
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2809
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "b":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, -0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Ljava/util/concurrent/ConcurrentHashMap$Node;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2810
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2811
    const/4 v0, 0x0

    .line 2812
    .local v0, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    move-object v2, p1

    .local v2, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_9
    if-eqz v2, :cond_61

    .line 2813
    iget-object v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2814
    .local v3, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2815
    if-nez v0, :cond_1c

    .line 2816
    iput-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2817
    const/4 v4, 0x0

    iput-boolean v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 2818
    move-object v0, v2

    goto :goto_5e

    .line 2821
    :cond_1c
    iget-object v4, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2822
    .local v4, "k":Ljava/lang/Object;, "TK;"
    iget v5, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    .line 2823
    .local v5, "h":I
    const/4 v6, 0x0

    .line 2824
    .local v6, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v7, v0

    .line 2826
    .local v7, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_22
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    .line 2827
    .local v8, "pk":Ljava/lang/Object;, "TK;"
    iget v9, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v10, v9

    .local v10, "ph":I
    if-le v9, v5, :cond_2b

    .line 2828
    const/4 v9, -0x1

    .local v9, "dir":I
    goto :goto_45

    .line 2829
    .end local v9    # "dir":I
    :cond_2b
    if-ge v10, v5, :cond_2f

    .line 2830
    const/4 v9, 0x1

    .restart local v9    # "dir":I
    goto :goto_45

    .line 2831
    .end local v9    # "dir":I
    :cond_2f
    if-nez v6, :cond_38

    .line 2832
    invoke-static {v4}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v9

    move-object v6, v9

    if-eqz v9, :cond_3f

    .line 2833
    :cond_38
    invoke-static {v6, v4, v8}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    move v11, v9

    .local v11, "dir":I
    if-nez v9, :cond_44

    .line 2834
    .end local v11    # "dir":I
    :cond_3f
    invoke-static {v4, v8}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v9

    .restart local v9    # "dir":I
    goto :goto_45

    .line 2833
    .end local v9    # "dir":I
    .restart local v11    # "dir":I
    :cond_44
    move v9, v11

    .line 2835
    .end local v11    # "dir":I
    .restart local v9    # "dir":I
    :goto_45
    move-object v11, v7

    .line 2836
    .local v11, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v9, :cond_4b

    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_4d

    :cond_4b
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_4d
    move-object v7, v12

    if-nez v12, :cond_60

    .line 2837
    iput-object v11, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2838
    if-gtz v9, :cond_57

    .line 2839
    iput-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_59

    .line 2841
    :cond_57
    iput-object v2, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2842
    :goto_59
    invoke-static {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    .line 2843
    nop

    .line 2812
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "h":I
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "pk":Ljava/lang/Object;, "TK;"
    .end local v9    # "dir":I
    .end local v10    # "ph":I
    .end local v11    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_5e
    move-object v2, v3

    goto :goto_9

    .line 2845
    .restart local v4    # "k":Ljava/lang/Object;, "TK;"
    .restart local v5    # "h":I
    .restart local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_60
    goto :goto_22

    .line 2848
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v4    # "k":Ljava/lang/Object;, "TK;"
    .end local v5    # "h":I
    .end local v6    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_61
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2849
    nop

    .line 2850
    return-void
.end method

.method static greylist-max-o balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3187
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    nop

    :goto_1
    if-eqz p1, :cond_ee

    if-ne p1, p0, :cond_7

    goto/16 :goto_ee

    .line 3189
    :cond_7
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 3190
    iput-boolean v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3191
    return-object p1

    .line 3193
    :cond_10
    iget-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_17

    .line 3194
    iput-boolean v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3195
    return-object p0

    .line 3197
    :cond_17
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, p1, :cond_87

    .line 3198
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v0

    .local v6, "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_39

    iget-boolean v0, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_39

    .line 3199
    iput-boolean v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3200
    iput-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3201
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3202
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_36

    move-object v0, v4

    goto :goto_38

    :cond_36
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_38
    move-object v6, v0

    .line 3204
    :cond_39
    if-nez v6, :cond_3d

    .line 3205
    move-object p1, v1

    goto :goto_1

    .line 3207
    :cond_3d
    iget-object v0, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v7, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3208
    .local v7, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_47

    iget-boolean v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_4e

    :cond_47
    if-eqz v0, :cond_82

    iget-boolean v8, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_4e

    goto :goto_82

    .line 3214
    :cond_4e
    if-eqz v7, :cond_54

    iget-boolean v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v8, :cond_67

    .line 3215
    :cond_54
    if-eqz v0, :cond_58

    .line 3216
    iput-boolean v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3217
    :cond_58
    iput-boolean v5, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3218
    invoke-static {p0, v6}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3219
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_64

    .line 3220
    goto :goto_66

    :cond_64
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_66
    move-object v6, v4

    .line 3222
    :cond_67
    if-eqz v6, :cond_78

    .line 3223
    if-nez v1, :cond_6d

    move v4, v2

    goto :goto_6f

    :cond_6d
    iget-boolean v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_6f
    iput-boolean v4, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3224
    iget-object v4, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v4

    if-eqz v4, :cond_78

    .line 3225
    iput-boolean v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3227
    :cond_78
    if-eqz v1, :cond_80

    .line 3228
    iput-boolean v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3229
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3231
    :cond_80
    move-object p1, p0

    goto :goto_85

    .line 3210
    :cond_82
    :goto_82
    iput-boolean v5, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3211
    move-object p1, v1

    .line 3233
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v7    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_85
    goto/16 :goto_1

    .line 3236
    .end local v6    # "xpr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_87
    if-eqz v3, :cond_9f

    iget-boolean v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v0, :cond_9f

    .line 3237
    iput-boolean v2, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3238
    iput-boolean v5, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3239
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3240
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    if-nez v0, :cond_9c

    move-object v0, v4

    goto :goto_9e

    :cond_9c
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_9e
    move-object v3, v0

    .line 3242
    :cond_9f
    if-nez v3, :cond_a4

    .line 3243
    move-object p1, v1

    goto/16 :goto_1

    .line 3245
    :cond_a4
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .restart local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3246
    .local v6, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_ae

    iget-boolean v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_b5

    :cond_ae
    if-eqz v6, :cond_e9

    iget-boolean v7, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_b5

    goto :goto_e9

    .line 3252
    :cond_b5
    if-eqz v0, :cond_bb

    iget-boolean v7, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v7, :cond_ce

    .line 3253
    :cond_bb
    if-eqz v6, :cond_bf

    .line 3254
    iput-boolean v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3255
    :cond_bf
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3256
    invoke-static {p0, v3}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3257
    iget-object v5, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v5

    if-nez v5, :cond_cb

    .line 3258
    goto :goto_cd

    :cond_cb
    iget-object v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_cd
    move-object v3, v4

    .line 3260
    :cond_ce
    if-eqz v3, :cond_df

    .line 3261
    if-nez v1, :cond_d4

    move v4, v2

    goto :goto_d6

    :cond_d4
    iget-boolean v4, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    :goto_d6
    iput-boolean v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3262
    iget-object v4, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v0, v4

    if-eqz v4, :cond_df

    .line 3263
    iput-boolean v2, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3265
    :cond_df
    if-eqz v1, :cond_e7

    .line 3266
    iput-boolean v2, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3267
    invoke-static {p0, v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3269
    :cond_e7
    move-object p1, p0

    goto :goto_ec

    .line 3248
    :cond_e9
    :goto_e9
    iput-boolean v5, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3249
    move-object p1, v1

    .line 3271
    .end local v0    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_ec
    goto/16 :goto_1

    .line 3188
    .end local v1    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "xpl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_ee
    :goto_ee
    return-object p0
.end method

.method static greylist-max-o balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3131
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v0, 0x1

    iput-boolean v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3133
    :cond_3
    :goto_3
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    .local v2, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v3, 0x0

    if-nez v1, :cond_c

    .line 3134
    iput-boolean v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3135
    return-object p1

    .line 3137
    :cond_c
    iget-boolean v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_7a

    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v4, v1

    .local v4, "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_17

    goto/16 :goto_7a

    .line 3139
    :cond_17
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    .local v5, "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v6, 0x0

    if-ne v2, v1, :cond_4d

    .line 3140
    iget-object v1, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v7, v1

    .local v7, "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_2e

    iget-boolean v1, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_2e

    .line 3141
    iput-boolean v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3142
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3143
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3144
    move-object p1, v4

    goto :goto_3

    .line 3147
    :cond_2e
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_40

    .line 3148
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3149
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_3d

    goto :goto_3f

    :cond_3d
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_3f
    move-object v4, v6

    .line 3151
    :cond_40
    if-eqz v2, :cond_3

    .line 3152
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3153
    if-eqz v4, :cond_3

    .line 3154
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3155
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 3161
    .end local v7    # "xppr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_4d
    if-eqz v5, :cond_5b

    iget-boolean v1, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v1, :cond_5b

    .line 3162
    iput-boolean v3, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3163
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3164
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3165
    move-object p1, v4

    goto :goto_3

    .line 3168
    :cond_5b
    iget-object v1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v1, :cond_6d

    .line 3169
    move-object p1, v2

    invoke-static {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    .line 3170
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v1

    if-nez v1, :cond_6a

    goto :goto_6c

    :cond_6a
    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_6c
    move-object v4, v6

    .line 3172
    :cond_6d
    if-eqz v2, :cond_3

    .line 3173
    iput-boolean v3, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3174
    if-eqz v4, :cond_3

    .line 3175
    iput-boolean v0, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3176
    invoke-static {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object p0

    goto :goto_3

    .line 3138
    .end local v4    # "xpp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "xppl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_7a
    :goto_7a
    return-object p0
.end method

.method static greylist-max-o checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3280
    .local p0, "t":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v0, "tp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "tl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3281
    .local v2, "tr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v3, "tb":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3282
    .local v4, "tn":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    const/4 v5, 0x0

    if-eqz v3, :cond_14

    iget-object v6, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    if-eq v6, p0, :cond_14

    .line 3283
    return v5

    .line 3284
    :cond_14
    if-eqz v4, :cond_1b

    iget-object v6, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq v6, p0, :cond_1b

    .line 3285
    return v5

    .line 3286
    :cond_1b
    if-eqz v0, :cond_26

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_26

    iget-object v6, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eq p0, v6, :cond_26

    .line 3287
    return v5

    .line 3288
    :cond_26
    if-eqz v1, :cond_33

    iget-object v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_32

    iget v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-le v6, v7, :cond_33

    .line 3289
    :cond_32
    return v5

    .line 3290
    :cond_33
    if-eqz v2, :cond_40

    iget-object v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v6, p0, :cond_3f

    iget v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    iget v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    if-ge v6, v7, :cond_40

    .line 3291
    :cond_3f
    return v5

    .line 3292
    :cond_40
    iget-boolean v6, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v1, :cond_51

    iget-boolean v6, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    if-eqz v2, :cond_51

    iget-boolean v6, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v6, :cond_51

    .line 3293
    return v5

    .line 3294
    :cond_51
    if-eqz v1, :cond_5a

    invoke-static {v1}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_5a

    .line 3295
    return v5

    .line 3296
    :cond_5a
    if-eqz v2, :cond_63

    invoke-static {v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->checkInvariants(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z

    move-result v6

    if-nez v6, :cond_63

    .line 3297
    return v5

    .line 3298
    :cond_63
    const/4 v5, 0x1

    return v5
.end method

.method private final greylist-max-o contendedLock()V
    .registers 12

    .line 2871
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 2873
    .local v4, "current":Ljava/lang/Thread;
    :cond_4
    :goto_4
    iget v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v9, v0

    .local v9, "s":I
    and-int/lit8 v0, v0, -0x3

    if-nez v0, :cond_29

    .line 2874
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v5

    sget-wide v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v10, 0x1

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    move-object v1, v6

    if-eqz v0, :cond_4

    .line 2875
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    if-ne v0, v4, :cond_28

    .line 2876
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->WAITERTHREAD:J

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    .line 2877
    :cond_28
    return-void

    .line 2880
    :cond_29
    and-int/lit8 v0, v9, 0x2

    if-nez v0, :cond_3b

    .line 2881
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v5

    sget-wide v7, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    or-int/lit8 v10, v9, 0x2

    move-object v6, p0

    invoke-virtual/range {v5 .. v10}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-object v1, v6

    goto :goto_4

    .line 2882
    :cond_3b
    move-object v1, p0

    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v6, v0

    .local v6, "w":Ljava/lang/Thread;
    if-nez v0, :cond_4e

    .line 2883
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->WAITERTHREAD:J

    move-object v5, v4

    .end local v4    # "current":Ljava/lang/Thread;
    .local v5, "current":Ljava/lang/Thread;
    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetReference(Ljava/lang/Object;JLjava/lang/Object;Ljava/lang/Object;)Z

    move-object v4, v5

    .end local v5    # "current":Ljava/lang/Thread;
    .restart local v4    # "current":Ljava/lang/Thread;
    goto :goto_4

    .line 2884
    :cond_4e
    if-ne v6, v4, :cond_4

    .line 2885
    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private final greylist-max-o lockRoot()V
    .registers 7

    .line 2856
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v0

    sget-wide v2, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v0

    if-nez v0, :cond_12

    .line 2857
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->contendedLock()V

    .line 2858
    :cond_12
    return-void
.end method

.method static greylist-max-o rotateLeft(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3096
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 3097
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    .local v2, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 3098
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3099
    :cond_10
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 3100
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_25

    .line 3101
    :cond_1c
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 3102
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_25

    .line 3104
    :cond_23
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3105
    :goto_25
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3106
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3108
    .end local v1    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o rotateRight(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3114
    .local p0, "root":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz p1, :cond_29

    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v1, v0

    .local v1, "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_29

    .line 3115
    iget-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v2, v0

    .local v2, "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v0, :cond_10

    .line 3116
    iput-object p1, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3117
    :cond_10
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v3, v0

    .local v3, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v0, :cond_1c

    .line 3118
    move-object p0, v1

    const/4 v0, 0x0

    iput-boolean v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_25

    .line 3119
    :cond_1c
    iget-object v0, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v0, p1, :cond_23

    .line 3120
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_25

    .line 3122
    :cond_23
    iput-object v1, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3123
    :goto_25
    iput-object p1, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3124
    iput-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3126
    .end local v1    # "l":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v2    # "lr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_29
    return-object p0
.end method

.method static greylist-max-o tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .line 2797
    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 2798
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2799
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    move v1, v0

    .local v1, "d":I
    if-nez v0, :cond_29

    .line 2800
    .end local v1    # "d":I
    :cond_1b
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    if-gt v0, v1, :cond_27

    .line 2801
    const/4 v0, -0x1

    goto :goto_28

    :cond_27
    const/4 v0, 0x1

    :goto_28
    move v1, v0

    .line 2802
    .restart local v1    # "d":I
    :cond_29
    return v1
.end method

.method private final greylist-max-o unlockRoot()V
    .registers 2

    .line 2864
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    .line 2865
    return-void
.end method


# virtual methods
.method final greylist-max-o find(ILjava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$Node;
    .registers 13
    .param p1, "h"    # I
    .param p2, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap$Node<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2895
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_6f

    .line 2896
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .local v1, "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :goto_5
    if-eqz v1, :cond_6d

    .line 2898
    iget v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockState:I

    move v7, v2

    .local v7, "s":I
    and-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_24

    .line 2899
    iget v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->hash:I

    if-ne v2, p1, :cond_20

    iget-object v2, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->key:Ljava/lang/Object;

    move-object v3, v2

    .local v3, "ek":Ljava/lang/Object;, "TK;"
    if-eq v2, p2, :cond_1f

    if-eqz v3, :cond_20

    .line 2900
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2901
    :cond_1f
    return-object v1

    .line 2902
    .end local v3    # "ek":Ljava/lang/Object;, "TK;"
    :cond_20
    iget-object v1, v1, Ljava/util/concurrent/ConcurrentHashMap$Node;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    move-object v4, p0

    goto :goto_6c

    .line 2904
    :cond_24
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v3

    sget-wide v5, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    add-int/lit8 v8, v7, 0x4

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Ljdk/internal/misc/Unsafe;->compareAndSetInt(Ljava/lang/Object;JII)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 2908
    const/4 v2, 0x6

    const/4 v3, -0x4

    :try_start_35
    iget-object v5, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v5

    .local v6, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v5, :cond_3b

    goto :goto_3f

    .line 2909
    :cond_3b
    invoke-virtual {v6, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_56

    :goto_3f
    nop

    .line 2912
    .local v0, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v5

    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v5, p0, v8, v9, v3}, Ljdk/internal/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_54

    iget-object v2, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    .local v3, "w":Ljava/lang/Thread;
    if-eqz v2, :cond_54

    .line 2914
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2915
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_54
    nop

    .line 2916
    return-object v0

    .line 2911
    .end local v0    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :catchall_56
    move-exception v0

    .line 2912
    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->-$$Nest$sfgetU()Ljdk/internal/misc/Unsafe;

    move-result-object v5

    sget-wide v8, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->LOCKSTATE:J

    invoke-virtual {v5, p0, v8, v9, v3}, Ljdk/internal/misc/Unsafe;->getAndAddInt(Ljava/lang/Object;JI)I

    move-result v3

    if-ne v3, v2, :cond_6b

    iget-object v2, v4, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->waiter:Ljava/lang/Thread;

    move-object v3, v2

    .restart local v3    # "w":Ljava/lang/Thread;
    if-eqz v2, :cond_6b

    .line 2914
    invoke-static {v3}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    .line 2915
    .end local v3    # "w":Ljava/lang/Thread;
    :cond_6b
    throw v0

    .line 2918
    .end local v7    # "s":I
    :cond_6c
    :goto_6c
    goto :goto_5

    .line 2896
    :cond_6d
    move-object v4, p0

    goto :goto_70

    .line 2895
    .end local v1    # "e":Ljava/util/concurrent/ConcurrentHashMap$Node;, "Ljava/util/concurrent/ConcurrentHashMap$Node<TK;TV;>;"
    :cond_6f
    move-object v4, p0

    .line 2920
    :goto_70
    return-object v0
.end method

.method final greylist-max-o putTreeVal(ILjava/lang/Object;Ljava/lang/Object;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    .registers 16
    .param p1, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2928
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p2, "k":Ljava/lang/Object;, "TK;"
    .local p3, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 2929
    .local v0, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 2930
    .local v1, "searched":Z
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move v7, v1

    move-object v8, v2

    .line 2932
    .end local v1    # "searched":Z
    .local v7, "searched":Z
    .local v8, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_6
    if-nez v8, :cond_18

    .line 2933
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2934
    goto/16 :goto_ad

    .line 2936
    :cond_18
    iget v1, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->hash:I

    move v9, v1

    .local v9, "ph":I
    if-le v1, p1, :cond_23

    .line 2937
    const/4 v1, -0x1

    move v10, v1

    move v11, v7

    move-object v7, v0

    .local v1, "dir":I
    goto/16 :goto_70

    .line 2938
    .end local v1    # "dir":I
    :cond_23
    if-ge v9, p1, :cond_2a

    .line 2939
    const/4 v1, 0x1

    move v10, v1

    move v11, v7

    move-object v7, v0

    .restart local v1    # "dir":I
    goto :goto_70

    .line 2940
    .end local v1    # "dir":I
    :cond_2a
    iget-object v1, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->key:Ljava/lang/Object;

    move-object v4, v1

    .local v4, "pk":Ljava/lang/Object;, "TK;"
    if-eq v1, p2, :cond_b9

    if-eqz v4, :cond_39

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    goto/16 :goto_b9

    .line 2942
    :cond_39
    if-nez v0, :cond_42

    .line 2943
    invoke-static {p2}, Ljava/util/concurrent/ConcurrentHashMap;->comparableClassFor(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_49

    .line 2944
    :cond_42
    invoke-static {v0, p2, v4}, Ljava/util/concurrent/ConcurrentHashMap;->compareComparables(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    move v5, v1

    .local v5, "dir":I
    if-nez v1, :cond_6d

    .line 2945
    .end local v5    # "dir":I
    :cond_49
    if-nez v7, :cond_65

    .line 2947
    const/4 v7, 0x1

    .line 2948
    iget-object v1, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    .local v5, "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_58

    .line 2949
    invoke-virtual {v5, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v1

    move-object v6, v1

    .local v6, "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_64

    .end local v6    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_58
    iget-object v1, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v1

    if-eqz v1, :cond_65

    .line 2951
    invoke-virtual {v5, p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->findTreeNode(ILjava/lang/Object;Ljava/lang/Class;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v1

    move-object v6, v1

    .restart local v6    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v1, :cond_65

    .line 2952
    :cond_64
    return-object v6

    .line 2954
    .end local v5    # "ch":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "q":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_65
    invoke-static {p2, v4}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->tieBreakOrder(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    move v10, v1

    move v11, v7

    move-object v7, v0

    .restart local v1    # "dir":I
    goto :goto_70

    .line 2944
    .end local v1    # "dir":I
    .local v5, "dir":I
    :cond_6d
    move v10, v5

    move v11, v7

    move-object v7, v0

    .line 2957
    .end local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "pk":Ljava/lang/Object;, "TK;"
    .end local v5    # "dir":I
    .local v7, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v10, "dir":I
    .local v11, "searched":Z
    :goto_70
    move-object v6, v8

    .line 2958
    .local v6, "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-gtz v10, :cond_76

    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_78

    :cond_76
    iget-object v0, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    :goto_78
    move-object v8, v0

    if-nez v0, :cond_b5

    .line 2959
    iget-object v5, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2960
    .local v5, "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap$Node;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)V

    move-object v2, v1

    .local v2, "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2961
    if-eqz v5, :cond_8c

    .line 2962
    iput-object v2, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2963
    :cond_8c
    if-gtz v10, :cond_91

    .line 2964
    iput-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_93

    .line 2966
    :cond_91
    iput-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2967
    :goto_93
    iget-boolean v0, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-nez v0, :cond_9b

    .line 2968
    const/4 v0, 0x1

    iput-boolean v0, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    goto :goto_ab

    .line 2970
    :cond_9b
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 2972
    :try_start_9e
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    invoke-static {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceInsertion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_a6
    .catchall {:try_start_9e .. :try_end_a6} :catchall_b0

    .line 2974
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2975
    nop

    .line 2977
    nop

    .line 2980
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "ph":I
    .end local v10    # "dir":I
    :goto_ab
    move-object v0, v7

    move v7, v11

    .end local v11    # "searched":Z
    .restart local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "searched":Z
    :goto_ad
    nop

    .line 2981
    const/4 v1, 0x0

    return-object v1

    .line 2974
    .end local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v6    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .local v7, "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v8    # "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v9    # "ph":I
    .restart local v10    # "dir":I
    .restart local v11    # "searched":Z
    :catchall_b0
    move-exception v0

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 2975
    throw v0

    .line 2979
    .end local v2    # "x":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v5    # "f":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v6    # "xp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v9    # "ph":I
    .end local v10    # "dir":I
    :cond_b5
    move-object v0, v7

    move v7, v11

    goto/16 :goto_6

    .line 2941
    .end local v11    # "searched":Z
    .restart local v0    # "kc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "pk":Ljava/lang/Object;, "TK;"
    .local v7, "searched":Z
    .restart local v9    # "ph":I
    :cond_b9
    :goto_b9
    return-object v8
.end method

.method final greylist-max-o removeTreeNode(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Z
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 2995
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$TreeBin;, "Ljava/util/concurrent/ConcurrentHashMap$TreeBin<TK;TV;>;"
    .local p1, "p":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v0, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2996
    .local v0, "next":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v1, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 2998
    .local v1, "pred":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v1, :cond_b

    .line 2999
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_d

    .line 3001
    :cond_b
    iput-object v0, v1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->next:Ljava/util/concurrent/ConcurrentHashMap$Node;

    .line 3002
    :goto_d
    if-eqz v0, :cond_11

    .line 3003
    iput-object v1, v0, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->prev:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3004
    :cond_11
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->first:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1a

    .line 3005
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3006
    return v3

    .line 3008
    :cond_1a
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v5, v2

    .local v5, "r":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_dc

    iget-object v2, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_dc

    iget-object v2, v5, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v6, v2

    .local v6, "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_dc

    iget-object v2, v6, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v2, :cond_2e

    goto/16 :goto_dc

    .line 3011
    :cond_2e
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->lockRoot()V

    .line 3014
    :try_start_31
    iget-object v2, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3015
    .local v2, "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v3, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3016
    .local v3, "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v2, :cond_8c

    if-eqz v3, :cond_8c

    .line 3017
    move-object v7, v3

    .line 3018
    .local v7, "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_3a
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v9, v8

    .local v9, "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v8, :cond_41

    .line 3019
    move-object v7, v9

    goto :goto_3a

    .line 3020
    :cond_41
    iget-boolean v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .local v8, "c":Z
    iget-boolean v10, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    iput-boolean v8, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    .line 3021
    iget-object v10, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3022
    .local v10, "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iget-object v11, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3023
    .local v11, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-ne v7, v3, :cond_54

    .line 3024
    iput-object v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3025
    iput-object p1, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_69

    .line 3028
    :cond_54
    iget-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3029
    .local v12, "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    iput-object v12, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v12, :cond_63

    .line 3030
    iget-object v13, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne v7, v13, :cond_61

    .line 3031
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_63

    .line 3033
    :cond_61
    iput-object p1, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3035
    :cond_63
    :goto_63
    iput-object v3, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v3, :cond_69

    .line 3036
    iput-object v7, v3, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3038
    .end local v12    # "sp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_69
    :goto_69
    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3039
    iput-object v10, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v10, :cond_71

    .line 3040
    iput-object p1, v10, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3041
    :cond_71
    iput-object v2, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-eqz v2, :cond_77

    .line 3042
    iput-object v7, v2, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3043
    :cond_77
    iput-object v11, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-nez v11, :cond_7d

    .line 3044
    move-object v5, v7

    goto :goto_86

    .line 3045
    :cond_7d
    iget-object v12, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v12, :cond_84

    .line 3046
    iput-object v7, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_86

    .line 3048
    :cond_84
    iput-object v7, v11, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3049
    :goto_86
    if-eqz v10, :cond_8a

    .line 3050
    move-object v12, v10

    .local v12, "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_8b

    .line 3052
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8a
    move-object v12, p1

    .line 3053
    .end local v7    # "s":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "c":Z
    .end local v9    # "sl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v10    # "sr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v11    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_8b
    goto :goto_95

    .line 3054
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_8c
    if-eqz v2, :cond_90

    .line 3055
    move-object v12, v2

    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_95

    .line 3056
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_90
    if-eqz v3, :cond_94

    .line 3057
    move-object v12, v3

    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    goto :goto_95

    .line 3059
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_94
    move-object v12, p1

    .line 3060
    .restart local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :goto_95
    if-eq v12, p1, :cond_ae

    .line 3061
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v7, v12, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3062
    .local v7, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-nez v7, :cond_9f

    .line 3063
    move-object v5, v12

    goto :goto_a8

    .line 3064
    :cond_9f
    iget-object v8, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v8, :cond_a6

    .line 3065
    iput-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_a8

    .line 3067
    :cond_a6
    iput-object v12, v7, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3068
    :goto_a8
    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3071
    .end local v7    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_ae
    iget-boolean v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->red:Z

    if-eqz v7, :cond_b4

    move-object v7, v5

    goto :goto_b8

    :cond_b4
    invoke-static {v5, v12}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->balanceDeletion(Ljava/util/concurrent/ConcurrentHashMap$TreeNode;Ljava/util/concurrent/ConcurrentHashMap$TreeNode;)Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-result-object v7

    :goto_b8
    iput-object v7, p0, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->root:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3073
    if-ne p1, v12, :cond_d0

    .line 3075
    iget-object v7, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    move-object v8, v7

    .local v8, "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    if-eqz v7, :cond_d0

    .line 3076
    iget-object v7, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_c8

    .line 3077
    iput-object v4, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->left:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    goto :goto_ce

    .line 3078
    :cond_c8
    iget-object v7, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    if-ne p1, v7, :cond_ce

    .line 3079
    iput-object v4, v8, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->right:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;

    .line 3080
    :cond_ce
    :goto_ce
    iput-object v4, p1, Ljava/util/concurrent/ConcurrentHashMap$TreeNode;->parent:Ljava/util/concurrent/ConcurrentHashMap$TreeNode;
    :try_end_d0
    .catchall {:try_start_31 .. :try_end_d0} :catchall_d7

    .line 3084
    .end local v2    # "pl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v3    # "pr":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v8    # "pp":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    .end local v12    # "replacement":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_d0
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3085
    nop

    .line 3086
    nop

    .line 3087
    const/4 v2, 0x0

    return v2

    .line 3084
    :catchall_d7
    move-exception v2

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap$TreeBin;->unlockRoot()V

    .line 3085
    throw v2

    .line 3010
    .end local v6    # "rl":Ljava/util/concurrent/ConcurrentHashMap$TreeNode;, "Ljava/util/concurrent/ConcurrentHashMap$TreeNode<TK;TV;>;"
    :cond_dc
    :goto_dc
    return v3
.end method
