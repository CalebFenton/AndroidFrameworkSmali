.class abstract Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;
.super Ljava/lang/Object;
.source "ExtensionSchema.java"


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;, "Landroid/net/connectivity/com/google/protobuf/ExtensionSchema<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract blacklist extensionNumber(Ljava/util/Map$Entry;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "**>;)I"
        }
    .end annotation
.end method

.method abstract blacklist findExtensionByNumber(Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/MessageLite;I)Ljava/lang/Object;
.end method

.method abstract blacklist getExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract blacklist getMutableExtensions(Ljava/lang/Object;)Landroid/net/connectivity/com/google/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract blacklist hasExtensions(Landroid/net/connectivity/com/google/protobuf/MessageLite;)Z
.end method

.method abstract blacklist makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract blacklist parseExtension(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/Reader;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "TT;>;TUB;",
            "Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist parseLengthPrefixedMessageSetItem(Landroid/net/connectivity/com/google/protobuf/Reader;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist parseMessageSetItem(Landroid/net/connectivity/com/google/protobuf/ByteString;Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist serializeExtension(Landroid/net/connectivity/com/google/protobuf/Writer;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/Writer;",
            "Ljava/util/Map$Entry<",
            "**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist setExtensions(Ljava/lang/Object;Landroid/net/connectivity/com/google/protobuf/FieldSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Landroid/net/connectivity/com/google/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation
.end method
