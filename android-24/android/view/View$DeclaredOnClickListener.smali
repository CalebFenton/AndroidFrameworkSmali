.class Landroid/view/View$DeclaredOnClickListener;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeclaredOnClickListener"
.end annotation


# instance fields
.field private final mHostView:Landroid/view/View;

.field private final mMethodName:Ljava/lang/String;

.field private mResolvedContext:Landroid/content/Context;

.field private mResolvedMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4682
    iput-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@5
    .line 4683
    iput-object p2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@7
    .line 4681
    return-void
.end method

.method private resolveMethod(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4705
    :goto_0
    if-eqz p1, :cond_2

    #@2
    .line 4707
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    #@5
    move-result v4

    #@6
    if-nez v4, :cond_0

    #@8
    .line 4708
    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v4

    #@c
    iget-object v5, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@e
    const/4 v6, 0x1

    #@f
    new-array v6, v6, [Ljava/lang/Class;

    #@11
    const-class v7, Landroid/view/View;

    #@13
    const/4 v8, 0x0

    #@14
    aput-object v7, v6, v8

    #@16
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@19
    move-result-object v3

    #@1a
    .line 4709
    .local v3, "method":Ljava/lang/reflect/Method;
    if-eqz v3, :cond_0

    #@1c
    .line 4710
    iput-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    #@1e
    .line 4711
    iput-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 4712
    return-void

    #@21
    .line 4715
    .end local v3    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    #@22
    .line 4719
    :cond_0
    instance-of v4, p1, Landroid/content/ContextWrapper;

    #@24
    if-eqz v4, :cond_1

    #@26
    .line 4720
    check-cast p1, Landroid/content/ContextWrapper;

    #@28
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@2b
    move-result-object p1

    #@2c
    goto :goto_0

    #@2d
    .line 4723
    .end local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 p1, 0x0

    #@2e
    .local p1, "context":Landroid/content/Context;
    goto :goto_0

    #@2f
    .line 4727
    .end local p1    # "context":Landroid/content/Context;
    :cond_2
    iget-object v4, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@31
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    #@34
    move-result v1

    #@35
    .line 4728
    .local v1, "id":I
    const/4 v4, -0x1

    #@36
    if-ne v1, v4, :cond_3

    #@38
    const-string/jumbo v2, ""

    #@3b
    .line 4730
    .local v2, "idText":Ljava/lang/String;
    :goto_1
    new-instance v4, Ljava/lang/IllegalStateException;

    #@3d
    new-instance v5, Ljava/lang/StringBuilder;

    #@3f
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@42
    const-string/jumbo v6, "Could not find method "

    #@45
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v5

    #@49
    iget-object v6, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@4b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    .line 4731
    const-string/jumbo v6, "(View) in a parent or ancestor Context for android:onClick "

    #@52
    .line 4730
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    move-result-object v5

    #@56
    .line 4732
    const-string/jumbo v6, "attribute defined on view "

    #@59
    .line 4730
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v5

    #@5d
    .line 4732
    iget-object v6, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@5f
    invoke-virtual {v6}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@62
    move-result-object v6

    #@63
    .line 4730
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v5

    #@67
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v5

    #@6f
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@72
    throw v4

    #@73
    .line 4728
    .end local v2    # "idText":Ljava/lang/String;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    #@75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v5, " with id \'"

    #@7b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v4

    #@7f
    .line 4729
    iget-object v5, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@81
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@84
    move-result-object v5

    #@85
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@88
    move-result-object v5

    #@89
    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@8c
    move-result-object v5

    #@8d
    .line 4728
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v4

    #@91
    .line 4729
    const-string/jumbo v5, "\'"

    #@94
    .line 4728
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v4

    #@98
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v2

    #@9c
    .restart local v2    # "idText":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 4688
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 4689
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@6
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@c
    invoke-direct {p0, v2, v3}, Landroid/view/View$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;Ljava/lang/String;)V

    #@f
    .line 4693
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedMethod:Ljava/lang/reflect/Method;

    #@11
    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mResolvedContext:Landroid/content/Context;

    #@13
    const/4 v4, 0x1

    #@14
    new-array v4, v4, [Ljava/lang/Object;

    #@16
    const/4 v5, 0x0

    #@17
    aput-object p1, v4, v5

    #@19
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 4687
    return-void

    #@1d
    .line 4697
    :catch_0
    move-exception v1

    #@1e
    .line 4698
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@20
    .line 4699
    const-string/jumbo v3, "Could not execute method for android:onClick"

    #@23
    .line 4698
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v2

    #@27
    .line 4694
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@28
    .line 4695
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2a
    .line 4696
    const-string/jumbo v3, "Could not execute non-public method for android:onClick"

    #@2d
    .line 4695
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@30
    throw v2
.end method
