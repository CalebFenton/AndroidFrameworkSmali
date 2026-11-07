.class public interface abstract Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite;
.super Ljava/lang/Object;
.source "FieldSet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/FieldSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FieldDescriptorLite"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract blacklist getEnumType()Lcom/android/framework/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/framework/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract blacklist getLiteJavaType()Lcom/android/framework/protobuf/WireFormat$JavaType;
.end method

.method public abstract blacklist getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;
.end method

.method public abstract blacklist getNumber()I
.end method

.method public abstract blacklist internalMergeFrom(Lcom/android/framework/protobuf/MessageLite$Builder;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite$Builder;
.end method

.method public abstract blacklist isPacked()Z
.end method

.method public abstract blacklist isRepeated()Z
.end method
