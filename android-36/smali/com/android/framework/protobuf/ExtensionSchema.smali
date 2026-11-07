.class abstract Lcom/android/framework/protobuf/ExtensionSchema;
.super Ljava/lang/Object;
.source "ExtensionSchema.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/framework/protobuf/FieldSet$FieldDescriptorLite<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 37
    .local p0, "this":Lcom/android/framework/protobuf/ExtensionSchema;, "Lcom/android/framework/protobuf/ExtensionSchema<TT;>;"
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

.method abstract blacklist findExtensionByNumber(Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/MessageLite;I)Ljava/lang/Object;
.end method

.method abstract blacklist getExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract blacklist getMutableExtensions(Ljava/lang/Object;)Lcom/android/framework/protobuf/FieldSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;"
        }
    .end annotation
.end method

.method abstract blacklist hasExtensions(Lcom/android/framework/protobuf/MessageLite;)Z
.end method

.method abstract blacklist makeImmutable(Ljava/lang/Object;)V
.end method

.method abstract blacklist parseExtension(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;Ljava/lang/Object;Lcom/android/framework/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "UB:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;TUB;",
            "Lcom/android/framework/protobuf/UnknownFieldSchema<",
            "TUT;TUB;>;)TUB;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist parseLengthPrefixedMessageSetItem(Lcom/android/framework/protobuf/Reader;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Reader;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist parseMessageSetItem(Lcom/android/framework/protobuf/ByteString;Ljava/lang/Object;Lcom/android/framework/protobuf/ExtensionRegistryLite;Lcom/android/framework/protobuf/FieldSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/ByteString;",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract blacklist serializeExtension(Lcom/android/framework/protobuf/Writer;Ljava/util/Map$Entry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/Writer;",
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

.method abstract blacklist setExtensions(Ljava/lang/Object;Lcom/android/framework/protobuf/FieldSet;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/android/framework/protobuf/FieldSet<",
            "TT;>;)V"
        }
    .end annotation
.end method
