.class public final Lcom/android/internal/app/ChooserActivity$EmptyTargetInfo;
.super Lcom/android/internal/app/chooser/NotSelectableTargetInfo;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "EmptyTargetInfo"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 2609
    invoke-direct {p0}, Lcom/android/internal/app/chooser/NotSelectableTargetInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2612
    const/4 v0, 0x0

    return-object v0
.end method
