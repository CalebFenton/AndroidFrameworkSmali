.class public Lcom/android/framework/protobuf/LazyField;
.super Lcom/android/framework/protobuf/LazyFieldLite;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/LazyField$LazyIterator;,
        Lcom/android/framework/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Lcom/android/framework/protobuf/MessageLite;


# direct methods
.method public constructor blacklist <init>(Lcom/android/framework/protobuf/MessageLite;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V
    .registers 4
    .param p1, "defaultInstance"    # Lcom/android/framework/protobuf/MessageLite;
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .param p3, "bytes"    # Lcom/android/framework/protobuf/ByteString;

    .line 56
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/LazyFieldLite;-><init>(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/ByteString;)V

    .line 58
    iput-object p1, p0, Lcom/android/framework/protobuf/LazyField;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist containsDefaultInstance()Z
    .registers 3

    .line 63
    invoke-super {p0}, Lcom/android/framework/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/framework/protobuf/LazyField;->value:Lcom/android/framework/protobuf/MessageLite;

    iget-object v1, p0, Lcom/android/framework/protobuf/LazyField;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 77
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MessageLite;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getValue()Lcom/android/framework/protobuf/MessageLite;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/framework/protobuf/LazyField;->defaultInstance:Lcom/android/framework/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/LazyField;->getValue(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-virtual {p0}, Lcom/android/framework/protobuf/LazyField;->getValue()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageLite;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
