.class public interface abstract Lcom/android/internal/org/bouncycastle/util/Selector;
.super Ljava/lang/Object;
.source "Selector.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract blacklist match(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation
.end method
