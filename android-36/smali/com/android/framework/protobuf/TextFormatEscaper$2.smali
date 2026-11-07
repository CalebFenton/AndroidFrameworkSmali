.class Lcom/android/framework/protobuf/TextFormatEscaper$2;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes([B)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$input:[B


# direct methods
.method constructor blacklist <init>([B)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/android/framework/protobuf/TextFormatEscaper$2;->val$input:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist byteAt(I)B
    .registers 3
    .param p1, "offset"    # I

    .line 144
    iget-object v0, p0, Lcom/android/framework/protobuf/TextFormatEscaper$2;->val$input:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/framework/protobuf/TextFormatEscaper$2;->val$input:[B

    array-length v0, v0

    return v0
.end method
