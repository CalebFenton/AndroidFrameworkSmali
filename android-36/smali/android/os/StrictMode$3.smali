.class Landroid/os/StrictMode$3;
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
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 1633
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/os/Handler;
    .registers 2

    .line 1636
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 1633
    invoke-virtual {p0}, Landroid/os/StrictMode$3;->initialValue()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method
