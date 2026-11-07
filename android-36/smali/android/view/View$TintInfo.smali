.class Landroid/view/View$TintInfo;
.super Ljava/lang/Object;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TintInfo"
.end annotation


# instance fields
.field blacklist mBlendMode:Landroid/graphics/BlendMode;

.field greylist-max-o mHasTintList:Z

.field greylist-max-o mHasTintMode:Z

.field greylist-max-o mTintList:Landroid/content/res/ColorStateList;


# direct methods
.method constructor greylist-max-o <init>()V
    .registers 1

    .line 5079
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
