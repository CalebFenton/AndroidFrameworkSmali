.class Lcom/android/internal/policy/DecorView$ColorViewState;
.super Ljava/lang/Object;
.source "DecorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DecorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewState"
.end annotation


# instance fields
.field final blacklist attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

.field blacklist color:I

.field blacklist present:Z

.field blacklist targetVisibility:I

.field blacklist view:Landroid/view/View;

.field blacklist visible:Z


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/policy/DecorView$ColorViewAttributes;)V
    .registers 3
    .param p1, "attributes"    # Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 2397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    .line 2390
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    .line 2391
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    .line 2398
    iput-object p1, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->attributes:Lcom/android/internal/policy/DecorView$ColorViewAttributes;

    .line 2399
    return-void
.end method
