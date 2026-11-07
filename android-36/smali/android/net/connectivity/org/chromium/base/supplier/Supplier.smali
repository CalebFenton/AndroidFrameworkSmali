.class public interface abstract Landroid/net/connectivity/org/chromium/base/supplier/Supplier;
.super Ljava/lang/Object;
.source "Supplier.java"

# interfaces
.implements Ljava/util/function/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Supplier<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public blacklist hasValue()Z
    .registers 2

    .line 16
    .local p0, "this":Landroid/net/connectivity/org/chromium/base/supplier/Supplier;, "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<TT;>;"
    invoke-interface {p0}, Landroid/net/connectivity/org/chromium/base/supplier/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
