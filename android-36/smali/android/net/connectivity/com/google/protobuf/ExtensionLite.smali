.class public abstract Landroid/net/connectivity/com/google/protobuf/ExtensionLite;
.super Ljava/lang/Object;
.source "ExtensionLite.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ContainingType::",
        "Landroid/net/connectivity/com/google/protobuf/MessageLite;",
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
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TContainingType;TType;>;"
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

.method public abstract blacklist getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
.end method

.method public abstract blacklist getMessageDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;
.end method

.method public abstract blacklist getNumber()I
.end method

.method blacklist isLite()Z
    .registers 2

    .line 58
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/ExtensionLite;, "Landroid/net/connectivity/com/google/protobuf/ExtensionLite<TContainingType;TType;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public abstract blacklist isRepeated()Z
.end method
