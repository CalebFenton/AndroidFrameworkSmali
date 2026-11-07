.class public Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils;
.super Ljava/lang/Object;
.source "SupplierUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 13
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs blacklist waitForAll(Ljava/lang/Runnable;[Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V
    .registers 4
    .param p0, "callback"    # Ljava/lang/Runnable;
    .param p1, "suppliers"    # [Landroid/net/connectivity/org/chromium/base/supplier/Supplier;

    .line 79
    nop

    .line 80
    new-instance v0, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;-><init>(Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils-IA;)V

    invoke-virtual {v0, p0, p1}, Landroid/net/connectivity/org/chromium/base/supplier/SupplierUtils$Barrier;->waitForAll(Ljava/lang/Runnable;[Landroid/net/connectivity/org/chromium/base/supplier/Supplier;)V

    .line 81
    return-void
.end method
