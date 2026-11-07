.class public interface abstract Ljdk/internal/access/JavaObjectInputStreamAccess;
.super Ljava/lang/Object;
.source "JavaObjectInputStreamAccess.java"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# virtual methods
.method public abstract blacklist checkArray(Ljava/io/ObjectInputStream;Ljava/lang/Class;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectInputStream;",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidClassException;
        }
    .end annotation
.end method
