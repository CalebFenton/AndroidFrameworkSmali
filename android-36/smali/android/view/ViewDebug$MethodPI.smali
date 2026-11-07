.class Landroid/view/ViewDebug$MethodPI;
.super Landroid/view/ViewDebug$PropertyInfo;
.source "ViewDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MethodPI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Landroid/view/ViewDebug$PropertyInfo<",
        "TT;",
        "Ljava/lang/reflect/Method;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/reflect/Method;Ljava/lang/Class;)V
    .registers 4
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Landroid/view/ViewDebug$MethodPI;, "Landroid/view/ViewDebug$MethodPI<TT;>;"
    .local p2, "property":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Landroid/view/ViewDebug$PropertyInfo;-><init>(Ljava/lang/Class;Ljava/lang/reflect/AccessibleObject;Ljava/lang/Class;)V

    .line 401
    return-void
.end method


# virtual methods
.method public blacklist invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 405
    .local p0, "this":Landroid/view/ViewDebug$MethodPI;, "Landroid/view/ViewDebug$MethodPI<TT;>;"
    iget-object v0, p0, Landroid/view/ViewDebug$MethodPI;->member:Ljava/lang/reflect/AccessibleObject;

    check-cast v0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
