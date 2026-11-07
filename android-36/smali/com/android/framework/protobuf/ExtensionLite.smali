.class public abstract Lcom/android/framework/protobuf/ExtensionLite;
.super Ljava/lang/Object;
.source "ExtensionLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Lcom/android/framework/protobuf/MessageLite;",
        "Type:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    .local p0, "this":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TContainingType;TType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getDefaultValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TType;"
        }
    .end annotation
.end method

.method public abstract blacklist getLiteType()Lcom/android/framework/protobuf/WireFormat$FieldType;
.end method

.method public abstract blacklist getMessageDefaultInstance()Lcom/android/framework/protobuf/MessageLite;
.end method

.method public abstract blacklist getNumber()I
.end method

.method blacklist isLite()Z
    .registers 2

    .line 58
    .local p0, "this":Lcom/android/framework/protobuf/ExtensionLite;, "Lcom/android/framework/protobuf/ExtensionLite<TContainingType;TType;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist isRepeated()Z
.end method
