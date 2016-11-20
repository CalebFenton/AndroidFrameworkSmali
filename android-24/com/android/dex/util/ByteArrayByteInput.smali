.class public final Lcom/android/dex/util/ByteArrayByteInput;
.super Ljava/lang/Object;
.source "ByteArrayByteInput.java"

# interfaces
.implements Lcom/android/dex/util/ByteInput;


# instance fields
.field private final bytes:[B

.field private position:I


# direct methods
.method public varargs constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 25
    iput-object p1, p0, Lcom/android/dex/util/ByteArrayByteInput;->bytes:[B

    #@5
    .line 24
    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 3

    #@0
    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/dex/util/ByteArrayByteInput;->bytes:[B

    #@2
    iget v1, p0, Lcom/android/dex/util/ByteArrayByteInput;->position:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/dex/util/ByteArrayByteInput;->position:I

    #@8
    aget-byte v0, v0, v1

    #@a
    return v0
.end method
