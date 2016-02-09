.class public Landroid/text/method/AllCapsTransformationMethod;
.super Ljava/lang/Object;
.source "AllCapsTransformationMethod.java"

# interfaces
.implements Landroid/text/method/TransformationMethod2;


# static fields
.field private static final TAG:Ljava/lang/String; = "AllCapsTransformationMethod"


# instance fields
.field private mEnabled:Z

.field private mLocale:Ljava/util/Locale;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@a
    move-result-object v0

    #@b
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    #@d
    iput-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    #@f
    .line 37
    return-void
.end method


# virtual methods
.method public getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    iget-boolean v1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 44
    const-string/jumbo v1, "AllCapsTransformationMethod"

    #@8
    const-string/jumbo v2, "Caller did not enable length changes; not transforming text"

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 45
    return-object p1

    #@f
    .line 48
    :cond_0
    if-nez p1, :cond_1

    #@11
    .line 49
    return-object v2

    #@12
    .line 52
    :cond_1
    const/4 v0, 0x0

    #@13
    .line 53
    .local v0, "locale":Ljava/util/Locale;
    instance-of v1, p2, Landroid/widget/TextView;

    #@15
    if-eqz v1, :cond_2

    #@17
    .line 54
    check-cast p2, Landroid/widget/TextView;

    #@19
    .end local p2    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    #@1c
    move-result-object v0

    #@1d
    .line 56
    .end local v0    # "locale":Ljava/util/Locale;
    :cond_2
    if-nez v0, :cond_3

    #@1f
    .line 57
    iget-object v0, p0, Landroid/text/method/AllCapsTransformationMethod;->mLocale:Ljava/util/Locale;

    #@21
    .line 59
    :cond_3
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public onFocusChanged(Landroid/view/View;Ljava/lang/CharSequence;ZILandroid/graphics/Rect;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "sourceText"    # Ljava/lang/CharSequence;
    .param p3, "focused"    # Z
    .param p4, "direction"    # I
    .param p5, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 64
    return-void
.end method

.method public setLengthChangesAllowed(Z)V
    .locals 0
    .param p1, "allowLengthChanges"    # Z

    #@0
    .prologue
    .line 69
    iput-boolean p1, p0, Landroid/text/method/AllCapsTransformationMethod;->mEnabled:Z

    #@2
    .line 68
    return-void
.end method
