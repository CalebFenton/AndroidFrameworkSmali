.class public abstract Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;
.super Landroid/util/FloatProperty;
.source "DynamicAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/dynamicanimation/animation/DynamicAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ViewProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 53
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/dynamicanimation/animation/DynamicAnimation-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/dynamicanimation/animation/DynamicAnimation$ViewProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method
