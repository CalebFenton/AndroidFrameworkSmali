.class public interface abstract Lcom/android/framework/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract blacklist getParserForType()Lcom/android/framework/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Parser<",
            "+",
            "Lcom/android/framework/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSerializedSize()I
.end method

.method public abstract blacklist newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;
.end method

.method public abstract blacklist toBuilder()Lcom/android/framework/protobuf/MessageLite$Builder;
.end method

.method public abstract blacklist toByteArray()[B
.end method

.method public abstract blacklist toByteString()Lcom/android/framework/protobuf/ByteString;
.end method

.method public abstract blacklist writeDelimitedTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTo(Lcom/android/framework/protobuf/CodedOutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
