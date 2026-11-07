.class Landroid/view/FocusFinder$1;
.super Ljava/lang/ThreadLocal;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/view/FocusFinder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/view/FocusFinder;
    .registers 3

    .line 44
    new-instance v0, Landroid/view/FocusFinder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/FocusFinder;-><init>(Landroid/view/FocusFinder-IA;)V

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 41
    invoke-virtual {p0}, Landroid/view/FocusFinder$1;->initialValue()Landroid/view/FocusFinder;

    move-result-object v0

    return-object v0
.end method
