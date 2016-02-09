.class public interface abstract Lcom/android/org/bouncycastle/util/StringList;
.super Ljava/lang/Object;
.source "StringList.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/org/bouncycastle/util/Iterable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract add(Ljava/lang/String;)Z
.end method

.method public abstract get(I)Ljava/lang/String;
.end method

.method public abstract size()I
.end method

.method public abstract toStringArray()[Ljava/lang/String;
.end method

.method public abstract toStringArray(II)[Ljava/lang/String;
.end method
