.class Landroid/view/PendingInsetsController$HideRequest;
.super Ljava/lang/Object;
.source "PendingInsetsController.java"

# interfaces
.implements Landroid/view/PendingInsetsController$PendingRequest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/PendingInsetsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HideRequest"
.end annotation


# instance fields
.field private final blacklist mTypes:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "types"    # I

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput p1, p0, Landroid/view/PendingInsetsController$HideRequest;->mTypes:I

    .line 273
    return-void
.end method


# virtual methods
.method public blacklist replay(Landroid/view/InsetsController;)V
    .registers 3
    .param p1, "controller"    # Landroid/view/InsetsController;

    .line 277
    iget v0, p0, Landroid/view/PendingInsetsController$HideRequest;->mTypes:I

    invoke-virtual {p1, v0}, Landroid/view/InsetsController;->hide(I)V

    .line 278
    return-void
.end method
