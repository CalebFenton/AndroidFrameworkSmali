.class Landroid/opengl/Matrix$1;
.super Ljava/lang/ThreadLocal;
.source "Matrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/Matrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 43
    invoke-virtual {p0}, Landroid/opengl/Matrix$1;->initialValue()[F

    move-result-object v0

    return-object v0
.end method

.method protected blacklist initialValue()[F
    .registers 2

    .line 45
    const/16 v0, 0x20

    new-array v0, v0, [F

    return-object v0
.end method
