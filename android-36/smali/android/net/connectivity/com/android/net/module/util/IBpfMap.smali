.class public interface abstract Landroid/net/connectivity/com/android/net/module/util/IBpfMap;
.super Ljava/lang/Object;
.source "IBpfMap.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Landroid/net/connectivity/com/android/net/module/util/Struct;",
        "V:",
        "Landroid/net/connectivity/com/android/net/module/util/Struct;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/AutoCloseable;"
    }
.end annotation


# virtual methods
.method public blacklist clear()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 99
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    .line 100
    .local v0, "key":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :goto_4
    if-eqz v0, :cond_e

    .line 101
    invoke-interface {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->deleteEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z

    .line 102
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    goto :goto_4

    .line 104
    :cond_e
    return-void
.end method

.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    return-void
.end method

.method public abstract blacklist containsKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist deleteEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist forEach(Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 81
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    .local p1, "action":Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer<TK;TV;>;"
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    .line 83
    .local v0, "nextKey":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    :goto_4
    if-eqz v0, :cond_13

    .line 84
    move-object v1, v0

    .line 85
    .local v1, "curKey":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    invoke-interface {p0, v1}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v2

    .line 87
    .local v2, "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    invoke-interface {p0, v1}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getNextKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v2}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .end local v1    # "curKey":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TK;"
    .end local v2    # "value":Landroid/net/connectivity/com/android/net/module/util/Struct;, "TV;"
    goto :goto_4

    .line 90
    :cond_13
    return-void
.end method

.method public abstract blacklist getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getNextKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public abstract blacklist insertEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract blacklist insertOrReplaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method

.method public blacklist isEmpty()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 61
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/IBpfMap;, "Landroid/net/connectivity/com/android/net/module/util/IBpfMap<TK;TV;>;"
    invoke-interface {p0}, Landroid/net/connectivity/com/android/net/module/util/IBpfMap;->getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public abstract blacklist replaceEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/util/NoSuchElementException;
        }
    .end annotation
.end method

.method public abstract blacklist updateEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation
.end method
