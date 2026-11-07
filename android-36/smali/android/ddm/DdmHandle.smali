.class public abstract Landroid/ddm/DdmHandle;
.super Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;
.source "DdmHandle.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Lorg/apache/harmony/dalvik/ddmc/ChunkHandler;-><init>()V

    return-void
.end method

.method public static blacklist getString(Ljava/nio/ByteBuffer;I)Ljava/lang/String;
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "len"    # I

    .line 34
    new-array v0, p1, [C

    .line 35
    .local v0, "data":[C
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, p1, :cond_e

    .line 36
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getChar()C

    move-result v2

    aput-char v2, v0, v1

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 38
    .end local v1    # "i":I
    :cond_e
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method public static blacklist putString(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "str"    # Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 46
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 47
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->putChar(C)Ljava/nio/ByteBuffer;

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 49
    .end local v1    # "i":I
    :cond_11
    return-void
.end method
