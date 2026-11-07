.class Lcom/android/internal/accessibility/dialog/TargetAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "TargetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/accessibility/dialog/TargetAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field blacklist mCheckBoxView:Landroid/widget/CheckBox;

.field blacklist mIconView:Landroid/widget/ImageView;

.field blacklist mLabelView:Landroid/widget/TextView;

.field blacklist mStatusView:Landroid/widget/TextView;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
