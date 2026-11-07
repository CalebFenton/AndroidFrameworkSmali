.class public interface abstract Lcom/android/internal/org/bouncycastle/util/StringList;
.super Ljava/lang/Object;
.source "StringList.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/org/bouncycastle/util/Iterable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist add(Ljava/lang/String;)Z
.end method

.method public abstract blacklist get(I)Ljava/lang/String;
.end method

.method public abstract blacklist size()I
.end method

.method public abstract blacklist toStringArray()[Ljava/lang/String;
.end method

.method public abstract blacklist toStringArray(II)[Ljava/lang/String;
.end method
