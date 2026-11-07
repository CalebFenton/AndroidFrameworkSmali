.class public Landroid/net/connectivity/com/google/protobuf/LazyField;
.super Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;
.source "LazyField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/LazyField$LazyIterator;,
        Landroid/net/connectivity/com/google/protobuf/LazyField$LazyEntry;
    }
.end annotation


# instance fields
.field private final blacklist defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;


# direct methods
.method public constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/MessageLite;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 4
    .param p1, "defaultInstance"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p2, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .param p3, "bytes"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 56
    invoke-direct {p0, p2, p3}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;-><init>(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 58
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/LazyField;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 59
    return-void
.end method


# virtual methods
.method public blacklist containsDefaultInstance()Z
    .registers 3

    .line 63
    invoke-super {p0}, Landroid/net/connectivity/com/google/protobuf/LazyFieldLite;->containsDefaultInstance()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyField;->value:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/LazyField;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

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
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/LazyField;->getValue()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist getValue()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 67
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/LazyField;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/LazyField;->getValue(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 72
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/LazyField;->getValue()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 82
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/LazyField;->getValue()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
