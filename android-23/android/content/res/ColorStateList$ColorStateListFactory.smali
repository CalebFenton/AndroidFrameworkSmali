.class Landroid/content/res/ColorStateList$ColorStateListFactory;
.super Landroid/content/res/ConstantState;
.source "ColorStateList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ColorStateList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorStateListFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/res/ConstantState",
        "<",
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSrc:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "src"    # Landroid/content/res/ColorStateList;

    #@0
    .prologue
    .line 615
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    #@3
    .line 616
    iput-object p1, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    #@5
    .line 615
    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    #@0
    .prologue
    .line 621
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    #@2
    invoke-static {v0}, Landroid/content/res/ColorStateList;->-get0(Landroid/content/res/ColorStateList;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public newInstance()Landroid/content/res/ColorStateList;
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    #@2
    return-object v0
.end method

.method public newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 631
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    #@2
    invoke-virtual {v0, p2}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public bridge synthetic newInstance()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 625
    invoke-virtual {p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance()Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 630
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
