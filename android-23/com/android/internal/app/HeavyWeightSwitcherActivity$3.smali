.class Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;
.super Ljava/lang/Object;
.source "HeavyWeightSwitcherActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/HeavyWeightSwitcherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/HeavyWeightSwitcherActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@0
    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/app/HeavyWeightSwitcherActivity$3;->this$0:Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/app/HeavyWeightSwitcherActivity;->finish()V

    #@5
    .line 154
    return-void
.end method
