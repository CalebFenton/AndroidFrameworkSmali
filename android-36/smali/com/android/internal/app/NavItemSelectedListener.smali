.class Lcom/android/internal/app/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final blacklist mListener:Landroid/app/ActionBar$OnNavigationListener;


# direct methods
.method public constructor blacklist <init>(Landroid/app/ActionBar$OnNavigationListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/app/ActionBar$OnNavigationListener;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 33
    return-void
.end method


# virtual methods
.method public whitelist onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 37
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Lcom/android/internal/app/NavItemSelectedListener;->mListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-interface {v0, p3, p4, p5}, Landroid/app/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    .line 40
    :cond_9
    return-void
.end method

.method public whitelist onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 45
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
