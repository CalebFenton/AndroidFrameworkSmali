.class Landroid/support/v4/view/LayoutInflaterCompatHC;
.super Ljava/lang/Object;
.source "LayoutInflaterCompatHC.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LayoutInflaterCompatHC"

.field private static sCheckedField:Z

.field private static sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 6
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/view/LayoutInflater$Factory2;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 71
    sget-boolean v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    #@3
    if-nez v2, :cond_0

    #@5
    .line 73
    :try_start_0
    const-class v2, Landroid/view/LayoutInflater;

    #@7
    const-string/jumbo v3, "mFactory2"

    #@a
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v2

    #@e
    sput-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    #@10
    .line 74
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    #@12
    const/4 v3, 0x1

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 80
    :goto_0
    sput-boolean v5, Landroid/support/v4/view/LayoutInflaterCompatHC;->sCheckedField:Z

    #@18
    .line 82
    :cond_0
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    #@1a
    if-eqz v2, :cond_1

    #@1c
    .line 84
    :try_start_1
    sget-object v2, Landroid/support/v4/view/LayoutInflaterCompatHC;->sLayoutInflaterFactory2Field:Ljava/lang/reflect/Field;

    #@1e
    invoke-virtual {v2, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    #@21
    .line 70
    :cond_1
    :goto_1
    return-void

    #@22
    .line 75
    :catch_0
    move-exception v1

    #@23
    .line 76
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "LayoutInflaterCompatHC"

    #@26
    new-instance v3, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v4, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    #@2e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v3

    #@32
    .line 77
    const-class v4, Landroid/view/LayoutInflater;

    #@34
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 78
    const-string/jumbo v4, "; inflation may have unexpected results."

    #@3f
    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v3

    #@47
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    goto :goto_0

    #@4b
    .line 85
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    #@4c
    .line 86
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "LayoutInflaterCompatHC"

    #@4f
    new-instance v3, Ljava/lang/StringBuilder;

    #@51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@54
    const-string/jumbo v4, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v3

    #@5f
    .line 87
    const-string/jumbo v4, "; inflation may have unexpected results."

    #@62
    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v3

    #@66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@69
    move-result-object v3

    #@6a
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@6d
    goto :goto_1
.end method

.method static setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "factory"    # Landroid/support/v4/view/LayoutInflaterFactory;

    #@0
    .prologue
    .line 49
    if-eqz p1, :cond_0

    #@2
    .line 50
    new-instance v1, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;

    #@4
    invoke-direct {v1, p1}, Landroid/support/v4/view/LayoutInflaterCompatHC$FactoryWrapperHC;-><init>(Landroid/support/v4/view/LayoutInflaterFactory;)V

    #@7
    .line 51
    :goto_0
    invoke-virtual {p0, v1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    #@a
    .line 53
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    #@d
    move-result-object v0

    #@e
    .line 54
    .local v0, "f":Landroid/view/LayoutInflater$Factory;
    instance-of v2, v0, Landroid/view/LayoutInflater$Factory2;

    #@10
    if-eqz v2, :cond_1

    #@12
    .line 57
    check-cast v0, Landroid/view/LayoutInflater$Factory2;

    #@14
    .end local v0    # "f":Landroid/view/LayoutInflater$Factory;
    invoke-static {p0, v0}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    #@17
    .line 48
    :goto_1
    return-void

    #@18
    .line 50
    :cond_0
    const/4 v1, 0x0

    #@19
    .local v1, "factory2":Landroid/view/LayoutInflater$Factory2;
    goto :goto_0

    #@1a
    .line 60
    .end local v1    # "factory2":Landroid/view/LayoutInflater$Factory2;
    .restart local v0    # "f":Landroid/view/LayoutInflater$Factory;
    :cond_1
    invoke-static {p0, v1}, Landroid/support/v4/view/LayoutInflaterCompatHC;->forceSetFactory2(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    #@1d
    goto :goto_1
.end method
