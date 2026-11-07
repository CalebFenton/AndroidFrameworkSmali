.class final Lcom/android/framework/protobuf/ByteString$SystemByteArrayCopier;
.super Ljava/lang/Object;
.source "ByteString.java"

# interfaces
.implements Lcom/android/framework/protobuf/ByteString$ByteArrayCopier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemByteArrayCopier"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/framework/protobuf/ByteString$1;

    .line 114
    invoke-direct {p0}, Lcom/android/framework/protobuf/ByteString$SystemByteArrayCopier;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist copyFrom([BII)[B
    .registers 6
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I

    .line 117
    new-array v0, p3, [B

    .line 118
    .local v0, "copy":[B
    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object v0
.end method
