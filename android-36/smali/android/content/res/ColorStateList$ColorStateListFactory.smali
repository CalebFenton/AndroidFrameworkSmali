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
        "Landroid/content/res/ConstantState<",
        "Landroid/content/res/ComplexColor;",
        ">;"
    }
.end annotation


# instance fields
.field private final greylist-max-o mSrc:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor greylist <init>(Landroid/content/res/ColorStateList;)V
    .registers 2
    .param p1, "src"    # Landroid/content/res/ColorStateList;

    .line 747
    invoke-direct {p0}, Landroid/content/res/ConstantState;-><init>()V

    .line 748
    iput-object p1, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    .line 749
    return-void
.end method


# virtual methods
.method public greylist-max-o getChangingConfigurations()I
    .registers 2

    .line 753
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->-$$Nest$fgetmChangingConfigurations(Landroid/content/res/ColorStateList;)I

    move-result v0

    return v0
.end method

.method public greylist-max-o newInstance()Landroid/content/res/ColorStateList;
    .registers 2

    .line 758
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public greylist-max-o newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .registers 4
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;

    .line 763
    iget-object v0, p0, Landroid/content/res/ColorStateList$ColorStateListFactory;->mSrc:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p2}, Landroid/content/res/ColorStateList;->obtainForTheme(Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist newInstance()Ljava/lang/Object;
    .registers 2

    .line 743
    invoke-virtual {p0}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic blacklist newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 743
    invoke-virtual {p0, p1, p2}, Landroid/content/res/ColorStateList$ColorStateListFactory;->newInstance(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method
