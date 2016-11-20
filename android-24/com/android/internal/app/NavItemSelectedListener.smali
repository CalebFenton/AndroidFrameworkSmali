.class Lcom/android/internal/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/app/ActionBar$OnNavigationListener;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 37
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 38
    iget-object v0, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    #@6
    invoke-interface {v0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    #@9
    .line 36
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
