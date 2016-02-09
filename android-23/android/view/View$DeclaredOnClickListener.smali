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

.field private mMethod:Ljava/lang/reflect/Method;

.field private final mMethodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0
    .param p1, "hostView"    # Landroid/view/View;
    .param p2, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 4436
    iput-object p1, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@5
    .line 4437
    iput-object p2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@7
    .line 4435
    return-void
.end method

.method private resolveMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4459
    :goto_0
    if-eqz p1, :cond_2

    #@2
    .line 4461
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    #@5
    move-result v3

    #@6
    if-nez v3, :cond_0

    #@8
    .line 4462
    invoke-virtual {p1}, Landroid/content/Context;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    iget-object v4, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@e
    const/4 v5, 0x1

    #@f
    new-array v5, v5, [Ljava/lang/Class;

    #@11
    const-class v6, Landroid/view/View;

    #@13
    const/4 v7, 0x0

    #@14
    aput-object v6, v5, v7

    #@16
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 4464
    :catch_0
    move-exception v0

    #@1c
    .line 4468
    :cond_0
    instance-of v3, p1, Landroid/content/ContextWrapper;

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 4469
    check-cast p1, Landroid/content/ContextWrapper;

    #@22
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    #@25
    move-result-object p1

    #@26
    goto :goto_0

    #@27
    .line 4472
    .end local p1    # "context":Landroid/content/Context;
    :cond_1
    const/4 p1, 0x0

    #@28
    .local p1, "context":Landroid/content/Context;
    goto :goto_0

    #@29
    .line 4476
    .end local p1    # "context":Landroid/content/Context;
    :cond_2
    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@2b
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    #@2e
    move-result v1

    #@2f
    .line 4477
    .local v1, "id":I
    const/4 v3, -0x1

    #@30
    if-ne v1, v3, :cond_3

    #@32
    const-string/jumbo v2, ""

    #@35
    .line 4479
    .local v2, "idText":Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/IllegalStateException;

    #@37
    new-instance v4, Ljava/lang/StringBuilder;

    #@39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3c
    const-string/jumbo v5, "Could not find method "

    #@3f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v4

    #@43
    iget-object v5, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v4

    #@49
    .line 4480
    const-string/jumbo v5, "(View) in a parent or ancestor Context for android:onClick "

    #@4c
    .line 4479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v4

    #@50
    .line 4481
    const-string/jumbo v5, "attribute defined on view "

    #@53
    .line 4479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v4

    #@57
    .line 4481
    iget-object v5, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@59
    invoke-virtual {v5}, Landroid/view/View;->getClass()Ljava/lang/Class;

    #@5c
    move-result-object v5

    #@5d
    .line 4479
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v4

    #@65
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@68
    move-result-object v4

    #@69
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v3

    #@6d
    .line 4477
    .end local v2    # "idText":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    #@6f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@72
    const-string/jumbo v4, " with id \'"

    #@75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    .line 4478
    iget-object v4, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@7b
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@7e
    move-result-object v4

    #@7f
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    #@86
    move-result-object v4

    #@87
    .line 4477
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v3

    #@8b
    .line 4478
    const-string/jumbo v4, "\'"

    #@8e
    .line 4477
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v3

    #@92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v2

    #@96
    .restart local v2    # "idText":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 4442
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethod:Ljava/lang/reflect/Method;

    #@2
    if-nez v2, :cond_0

    #@4
    .line 4443
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@6
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@9
    move-result-object v2

    #@a
    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mMethodName:Ljava/lang/String;

    #@c
    invoke-direct {p0, v2, v3}, Landroid/view/View$DeclaredOnClickListener;->resolveMethod(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/reflect/Method;

    #@f
    move-result-object v2

    #@10
    iput-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethod:Ljava/lang/reflect/Method;

    #@12
    .line 4447
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/view/View$DeclaredOnClickListener;->mMethod:Ljava/lang/reflect/Method;

    #@14
    iget-object v3, p0, Landroid/view/View$DeclaredOnClickListener;->mHostView:Landroid/view/View;

    #@16
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    #@19
    move-result-object v3

    #@1a
    const/4 v4, 0x1

    #@1b
    new-array v4, v4, [Ljava/lang/Object;

    #@1d
    const/4 v5, 0x0

    #@1e
    aput-object p1, v4, v5

    #@20
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@23
    .line 4441
    return-void

    #@24
    .line 4451
    :catch_0
    move-exception v1

    #@25
    .line 4452
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@27
    .line 4453
    const-string/jumbo v3, "Could not execute method for android:onClick"

    #@2a
    .line 4452
    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2d
    throw v2

    #@2e
    .line 4448
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    #@2f
    .line 4449
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/IllegalStateException;

    #@31
    .line 4450
    const-string/jumbo v3, "Could not execute non-public method for android:onClick"

    #@34
    .line 4449
    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@37
    throw v2
.end method
