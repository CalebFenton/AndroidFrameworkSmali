.class Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$2;
.super Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;
.source "LazyOneshotSupplier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;->fromSupplier(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier;
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
.field final synthetic blacklist val$supplier:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V
    .registers 2

    .line 57
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$2;->val$supplier:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplierImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist doSet()V
    .registers 2

    .line 60
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$2;->val$supplier:Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    invoke-interface {v0}, Landroid/net/connectivity/org/chromium/base/supplier/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/connectivity/org/chromium/base/supplier/LazyOneshotSupplier$2;->set(Ljava/lang/Object;)V

    .line 61
    return-void
.end method
