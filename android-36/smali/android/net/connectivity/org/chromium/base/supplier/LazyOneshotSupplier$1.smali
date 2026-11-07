.class Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$1;
.super Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;
.source "LazyOneshotSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;->fromValue(Ljava/lang/Object;)Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist val$value:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2

    .line 44
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist doSet()V
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$1;->val$value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$1;->set(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
