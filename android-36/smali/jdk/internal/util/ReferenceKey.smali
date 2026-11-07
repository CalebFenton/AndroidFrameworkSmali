.class public interface abstract Ljdk/internal/util/ReferenceKey;
.super Ljava/lang/Object;
.source "ReferenceKey.java"


# annotations
.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljdk/internal/util/StrongReferenceKey;,
        Ljdk/internal/util/WeakReferenceKey;,
        Ljdk/internal/util/SoftReferenceKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist get()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract blacklist unused()V
.end method
