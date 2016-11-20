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
.field color:I

.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field present:Z

.field final seascapeGravity:I

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field view:Landroid/view/View;

.field visible:Z


# direct methods
.method constructor <init>(IIIIILjava/lang/String;II)V
    .locals 1
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "seascapeGravity"    # I
    .param p6, "transitionName"    # Ljava/lang/String;
    .param p7, "id"    # I
    .param p8, "hideWindowFlag"    # I

    #@0
    .prologue
    .line 2261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 2246
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->view:Landroid/view/View;

    #@6
    .line 2247
    const/4 v0, 0x4

    #@7
    iput v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->targetVisibility:I

    #@9
    .line 2248
    const/4 v0, 0x0

    #@a
    iput-boolean v0, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->present:Z

    #@c
    .line 2264
    iput p7, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->id:I

    #@e
    .line 2265
    iput p1, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->systemUiHideFlag:I

    #@10
    .line 2266
    iput p2, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->translucentFlag:I

    #@12
    .line 2267
    iput p3, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->verticalGravity:I

    #@14
    .line 2268
    iput p4, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->horizontalGravity:I

    #@16
    .line 2269
    iput p5, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->seascapeGravity:I

    #@18
    .line 2270
    iput-object p6, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->transitionName:Ljava/lang/String;

    #@1a
    .line 2271
    iput p8, p0, Lcom/android/internal/policy/DecorView$ColorViewState;->hideWindowFlag:I

    #@1c
    .line 2263
    return-void
.end method
