.class public interface abstract Landroid/net/connectivity/com/google/protobuf/MessageLite;
.super Ljava/lang/Object;
.source "MessageLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    }
.end annotation


# virtual methods
.method public abstract blacklist getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "+",
            "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end method

.method public abstract blacklist getSerializedSize()I
.end method

.method public abstract blacklist newBuilderForType()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
.end method

.method public abstract blacklist toBuilder()Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
.end method

.method public abstract blacklist toByteArray()[B
.end method

.method public abstract blacklist toByteString()Landroid/net/connectivity/com/google/protobuf/ByteString;
.end method

.method public abstract blacklist writeDelimitedTo(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blacklist writeTo(Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;)V
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
