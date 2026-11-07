.class abstract Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;
.super Ljava/lang/Object;
.source "AnimatedStateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/AnimatedStateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Transition"
.end annotation


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/AnimatedStateListDrawable-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/graphics/drawable/AnimatedStateListDrawable$Transition;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o canReverse()Z
    .registers 2

    .line 246
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o reverse()V
    .registers 1

    .line 243
    return-void
.end method

.method public abstract greylist-max-o start()V
.end method

.method public abstract greylist-max-o stop()V
.end method
