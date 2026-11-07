.class Landroid/os/StrictMode$4;
.super Ljava/lang/ThreadLocal;
.source "StrictMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/StrictMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/os/StrictMode$AndroidBlockGuardPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1641
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/os/StrictMode$AndroidBlockGuardPolicy;
    .registers 3

    .line 1644
    new-instance v0, Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/StrictMode$AndroidBlockGuardPolicy;-><init>(I)V

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 1641
    invoke-virtual {p0}, Landroid/os/StrictMode$4;->initialValue()Landroid/os/StrictMode$AndroidBlockGuardPolicy;

    move-result-object v0

    return-object v0
.end method
