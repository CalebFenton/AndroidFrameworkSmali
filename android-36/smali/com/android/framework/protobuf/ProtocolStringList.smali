.class public interface abstract Lcom/android/framework/protobuf/ProtocolStringList;
.super Ljava/lang/Object;
.source "ProtocolStringList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract blacklist asByteStringList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end method
