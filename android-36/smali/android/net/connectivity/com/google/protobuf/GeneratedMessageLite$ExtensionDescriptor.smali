.class final Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/net/connectivity/com/google/protobuf/FieldSet$FieldDescriptorLite<",
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field final blacklist enumTypeMap:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field final blacklist isPacked:Z

.field final blacklist isRepeated:Z

.field final blacklist number:I

.field final blacklist type:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;ILandroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;ZZ)V
    .registers 6
    .param p2, "number"    # I
    .param p3, "type"    # Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .param p4, "isRepeated"    # Z
    .param p5, "isPacked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    .line 1198
    .local p1, "enumTypeMap":Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;, "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    .line 1200
    iput p2, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    .line 1201
    iput-object p3, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    .line 1202
    iput-boolean p4, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    .line 1203
    iput-boolean p5, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    .line 1204
    return-void
.end method


# virtual methods
.method public blacklist compareTo(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .registers 4
    .param p1, "other"    # Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 1251
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget v1, p1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 1191
    check-cast p1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public blacklist getEnumType()Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    .line 1239
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Landroid/net/connectivity/com/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public blacklist getLiteJavaType()Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;
    .registers 2

    .line 1224
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;->getJavaType()Landroid/net/connectivity/com/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getLiteType()Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;
    .registers 2

    .line 1219
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Landroid/net/connectivity/com/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public blacklist getNumber()I
    .registers 2

    .line 1214
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public blacklist internalMergeFrom(Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .registers 5
    .param p1, "to"    # Landroid/net/connectivity/com/google/protobuf/MessageLite$Builder;
    .param p2, "from"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 1245
    move-object v0, p1

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-object v1, p2

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isPacked()Z
    .registers 2

    .line 1234
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public blacklist isRepeated()Z
    .registers 2

    .line 1229
    iget-boolean v0, p0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
