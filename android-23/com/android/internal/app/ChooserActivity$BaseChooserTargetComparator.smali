.class Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BaseChooserTargetComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/service/chooser/ChooserTarget;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I
    .locals 2
    .param p1, "lhs"    # Landroid/service/chooser/ChooserTarget;
    .param p2, "rhs"    # Landroid/service/chooser/ChooserTarget;

    #@0
    .prologue
    .line 888
    invoke-virtual {p1}, Landroid/service/chooser/ChooserTarget;->getScore()F

    #@3
    move-result v0

    #@4
    invoke-virtual {p2}, Landroid/service/chooser/ChooserTarget;->getScore()F

    #@7
    move-result v1

    #@8
    sub-float/2addr v0, v1

    #@9
    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    #@c
    move-result v0

    #@d
    float-to-int v0, v0

    #@e
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 886
    check-cast p1, Landroid/service/chooser/ChooserTarget;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/service/chooser/ChooserTarget;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ChooserActivity$BaseChooserTargetComparator;->compare(Landroid/service/chooser/ChooserTarget;Landroid/service/chooser/ChooserTarget;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
