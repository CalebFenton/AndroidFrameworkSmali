.class final Lcom/android/internal/app/ChooserActivity$FooterViewHolder;
.super Lcom/android/internal/app/ChooserActivity$ViewHolderBase;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FooterViewHolder"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/view/View;I)V
    .registers 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .line 3110
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$ViewHolderBase;-><init>(Landroid/view/View;I)V

    .line 3111
    return-void
.end method
