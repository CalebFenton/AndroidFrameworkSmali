.class public abstract Lcom/android/i18n/timezone/internal/BufferIterator;
.super Ljava/lang/Object;
.source "BufferIterator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist pos()I
.end method

.method public abstract blacklist readByte()B
.end method

.method public abstract blacklist readByteArray([BII)V
.end method

.method public abstract blacklist readInt()I
.end method

.method public abstract blacklist readIntArray([III)V
.end method

.method public abstract blacklist readLongArray([JII)V
.end method

.method public abstract blacklist readShort()S
.end method

.method public abstract blacklist seek(I)V
.end method

.method public abstract blacklist skip(I)V
.end method
