.class public interface abstract Landroid/net/connectivity/org/chromium/base/supplier/ObservableSupplier;
.super Ljava/lang/Object;
.source "ObservableSupplier.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/base/supplier/Supplier;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/org/chromium/base/supplier/Supplier<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract blacklist addObserver(Landroid/net/connectivity/org/chromium/base/Callback;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;)TE;"
        }
    .end annotation
.end method

.method public abstract blacklist removeObserver(Landroid/net/connectivity/org/chromium/base/Callback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/org/chromium/base/Callback<",
            "TE;>;)V"
        }
    .end annotation
.end method
