.class final Lcom/android/internal/app/ChooserActivity$PlaceHolderTargetInfo;
.super Lcom/android/internal/app/chooser/NotSelectableTargetInfo;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PlaceHolderTargetInfo"
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 2599
    invoke-direct {p0}, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2601
    nop

    .line 2602
    const v0, 0x10802da

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 2603
    .local v0, "avd":Landroid/graphics/drawable/AnimatedVectorDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 2604
    return-object v0
.end method
