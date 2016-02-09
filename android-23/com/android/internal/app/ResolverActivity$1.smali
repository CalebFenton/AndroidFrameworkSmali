.class Lcom/android/internal/app/ResolverActivity$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ResolverActivity;

    #@0
    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@2
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get0(Lcom/android/internal/app/ResolverActivity;)Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->handlePackagesChanged()V

    #@9
    .line 110
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@b
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get6(Lcom/android/internal/app/ResolverActivity;)Landroid/view/View;

    #@e
    move-result-object v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 111
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$1;->this$0:Lcom/android/internal/app/ResolverActivity;

    #@13
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->bindProfileView()V

    #@16
    .line 108
    :cond_0
    return-void
.end method
