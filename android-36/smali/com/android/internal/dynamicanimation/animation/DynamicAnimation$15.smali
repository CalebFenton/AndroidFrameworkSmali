.class Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;
.super Landroid/util/FloatProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;-><init>(Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;Ljava/lang/String;Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;"
    iput-object p3, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-direct {p0, p2}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Float;
    .registers 3
    .param p1, "object"    # Ljava/lang/Object;

    .line 348
    .local p0, "this":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 345
    .local p0, "this":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;"
    invoke-virtual {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->get(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public whitelist setValue(Ljava/lang/Object;F)V
    .registers 4
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "value"    # F

    .line 353
    .local p0, "this":Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;, "Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;"
    iget-object v0, p0, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$15;->val$floatValueHolder:Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;

    invoke-virtual {v0, p2}, Lcom/android/internal/dynamicanimation/animation/FloatValueHolder;->setValue(F)V

    .line 354
    return-void
.end method
