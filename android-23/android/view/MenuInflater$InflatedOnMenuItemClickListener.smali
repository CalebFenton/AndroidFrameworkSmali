.class Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "MenuInflater.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatedOnMenuItemClickListener"
.end annotation


# static fields
.field private static final PARAM_TYPES:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mMethod:Ljava/lang/reflect/Method;

.field private mRealOwner:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 231
    const/4 v0, 0x1

    #@1
    new-array v0, v0, [Ljava/lang/Class;

    #@3
    const-class v1, Landroid/view/MenuItem;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object v1, v0, v2

    #@8
    sput-object v0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    #@a
    .line 229
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "realOwner"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 237
    iput-object p1, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    #@5
    .line 238
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v0

    #@9
    .line 240
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    sget-object v3, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->PARAM_TYPES:[Ljava/lang/Class;

    #@b
    invoke-virtual {v0, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e
    move-result-object v3

    #@f
    iput-object v3, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 236
    return-void

    #@12
    .line 241
    :catch_0
    move-exception v1

    #@13
    .line 242
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/view/InflateException;

    #@15
    .line 243
    new-instance v3, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v4, "Couldn\'t resolve menu item onClick handler "

    #@1d
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    .line 244
    const-string/jumbo v4, " in class "

    #@28
    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    .line 244
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@2f
    move-result-object v4

    #@30
    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    .line 242
    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    #@3b
    .line 245
    .local v2, "ex":Landroid/view/InflateException;
    invoke-virtual {v2, v1}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@3e
    .line 246
    throw v2
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 252
    :try_start_0
    iget-object v1, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    #@3
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    #@6
    move-result-object v1

    #@7
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 253
    iget-object v1, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    #@d
    iget-object v2, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    #@f
    const/4 v3, 0x1

    #@10
    new-array v3, v3, [Ljava/lang/Object;

    #@12
    const/4 v4, 0x0

    #@13
    aput-object p1, v3, v4

    #@15
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, Ljava/lang/Boolean;

    #@1b
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    #@1e
    move-result v1

    #@1f
    return v1

    #@20
    .line 255
    :cond_0
    iget-object v1, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mMethod:Ljava/lang/reflect/Method;

    #@22
    iget-object v2, p0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;->mRealOwner:Ljava/lang/Object;

    #@24
    const/4 v3, 0x1

    #@25
    new-array v3, v3, [Ljava/lang/Object;

    #@27
    const/4 v4, 0x0

    #@28
    aput-object p1, v3, v4

    #@2a
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2d
    .line 256
    return v5

    #@2e
    .line 258
    :catch_0
    move-exception v0

    #@2f
    .line 259
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@31
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@34
    throw v1
.end method
