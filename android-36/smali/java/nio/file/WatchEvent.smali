.class public interface abstract Ljava/nio/file/WatchEvent;
.super Ljava/lang/Object;
.source "WatchEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/nio/file/WatchEvent$Modifier;,
        Ljava/nio/file/WatchEvent$Kind;
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
.method public abstract whitelist test-api context()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api count()I
.end method

.method public abstract whitelist test-api kind()Ljava/nio/file/WatchEvent$Kind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/nio/file/WatchEvent$Kind<",
            "TT;>;"
        }
    .end annotation
.end method
