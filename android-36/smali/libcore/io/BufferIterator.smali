.class public abstract Llibcore/io/BufferIterator;
.super Ljava/lang/Object;
.source "BufferIterator.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist pos()I
.end method

.method public abstract greylist readByte()B
.end method

.method public abstract greylist readByteArray([BII)V
.end method

.method public abstract greylist readInt()I
.end method

.method public abstract greylist readIntArray([III)V
.end method

.method public abstract blacklist readLongArray([JII)V
.end method

.method public abstract blacklist readShort()S
.end method

.method public abstract greylist seek(I)V
.end method

.method public abstract greylist skip(I)V
.end method
