.class Landroid/view/View$MatchLabelForPredicate;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MatchLabelForPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private mLabeledId:I

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method static synthetic -set0(Landroid/view/View$MatchLabelForPredicate;I)I
    .locals 0

    #@0
    iput p1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    #@2
    return p1
.end method

.method private constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    .line 22294
    iput-object p1, p0, Landroid/view/View$MatchLabelForPredicate;->this$0:Landroid/view/View;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$MatchLabelForPredicate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/view/View$MatchLabelForPredicate;-><init>(Landroid/view/View;)V

    #@3
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 22299
    invoke-static {p1}, Landroid/view/View;->-get0(Landroid/view/View;)I

    #@3
    move-result v0

    #@4
    iget v1, p0, Landroid/view/View$MatchLabelForPredicate;->mLabeledId:I

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 22298
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "view":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$MatchLabelForPredicate;->apply(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
