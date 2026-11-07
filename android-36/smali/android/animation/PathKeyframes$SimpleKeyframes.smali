.class abstract Landroid/animation/PathKeyframes$SimpleKeyframes;
.super Ljava/lang/Object;
.source "PathKeyframes.java"

# interfaces
.implements Landroid/animation/Keyframes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PathKeyframes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SimpleKeyframes"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/animation/PathKeyframes-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clone()Landroid/animation/Keyframes;
    .registers 3

    .line 219
    const/4 v0, 0x0

    .line 221
    .local v0, "clone":Landroid/animation/Keyframes;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Keyframes;
    :try_end_7
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_7} :catch_9

    move-object v0, v1

    goto :goto_a

    .line 222
    :catch_9
    move-exception v1

    :goto_a
    nop

    .line 223
    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->clone()Landroid/animation/Keyframes;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getKeyframes()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/animation/Keyframe;",
            ">;"
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/animation/PathKeyframes;->-$$Nest$sfgetEMPTY_KEYFRAMES()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist getKeyframes()Ljava/util/List;
    .registers 2

    .line 207
    invoke-virtual {p0}, Landroid/animation/PathKeyframes$SimpleKeyframes;->getKeyframes()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setEvaluator(Landroid/animation/TypeEvaluator;)V
    .registers 2
    .param p1, "evaluator"    # Landroid/animation/TypeEvaluator;

    .line 210
    return-void
.end method
