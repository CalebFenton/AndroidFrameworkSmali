.class Lcom/android/framework/protobuf/TextFormatEscaper$1;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"

# interfaces
.implements Lcom/android/framework/protobuf/TextFormatEscaper$ByteSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/framework/protobuf/TextFormatEscaper;->escapeBytes(Lcom/android/framework/protobuf/ByteString;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$input:Lcom/android/framework/protobuf/ByteString;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/ByteString;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/framework/protobuf/TextFormatEscaper$1;->val$input:Lcom/android/framework/protobuf/ByteString;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist byteAt(I)B
    .registers 3
    .param p1, "offset"    # I

    .line 128
    iget-object v0, p0, Lcom/android/framework/protobuf/TextFormatEscaper$1;->val$input:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/ByteString;->byteAt(I)B

    move-result v0

    return v0
.end method

.method public blacklist size()I
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/android/framework/protobuf/TextFormatEscaper$1;->val$input:Lcom/android/framework/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method
