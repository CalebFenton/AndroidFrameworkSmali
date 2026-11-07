.class public Landroid/opengl/ETC1;
.super Ljava/lang/Object;
.source "ETC1.java"


# static fields
.field public static final whitelist DECODED_BLOCK_SIZE:I = 0x30

.field public static final whitelist ENCODED_BLOCK_SIZE:I = 0x8

.field public static final whitelist ETC1_RGB8_OES:I = 0x8d64

.field public static final whitelist ETC_PKM_HEADER_SIZE:I = 0x10


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native whitelist decodeBlock(Ljava/nio/Buffer;Ljava/nio/Buffer;)V
.end method

.method public static native whitelist decodeImage(Ljava/nio/Buffer;Ljava/nio/Buffer;IIII)V
.end method

.method public static native whitelist encodeBlock(Ljava/nio/Buffer;ILjava/nio/Buffer;)V
.end method

.method public static native whitelist encodeImage(Ljava/nio/Buffer;IIIILjava/nio/Buffer;)V
.end method

.method public static native whitelist formatHeader(Ljava/nio/Buffer;II)V
.end method

.method public static native whitelist getEncodedDataSize(II)I
.end method

.method public static native whitelist getHeight(Ljava/nio/Buffer;)I
.end method

.method public static native whitelist getWidth(Ljava/nio/Buffer;)I
.end method

.method public static native whitelist isValid(Ljava/nio/Buffer;)Z
.end method
