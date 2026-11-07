.class public interface abstract Landroid/flags/DynamicFlag;
.super Ljava/lang/Object;
.source "DynamicFlag.java"

# interfaces
.implements Landroid/flags/Flag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/flags/Flag<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public blacklist isDynamic()Z
    .registers 2

    .line 29
    .local p0, "this":Landroid/flags/DynamicFlag;, "Landroid/flags/DynamicFlag<TT;>;"
    const/4 v0, 0x1

    return v0
.end method
