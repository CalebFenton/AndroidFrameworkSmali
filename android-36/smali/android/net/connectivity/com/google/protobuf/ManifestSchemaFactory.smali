.class final Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/SchemaFactory;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_FACTORY:Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;


# instance fields
.field private final blacklist messageInfoFactory:Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;-><init>(Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;)V

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;)V
    .registers 3
    .param p1, "messageInfoFactory"    # Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    .line 50
    return-void
.end method

.method private static blacklist getDefaultMessageInfoFactory()Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    .registers 4

    .line 119
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    .line 120
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageInfoFactory;->getInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;)V

    .line 119
    return-object v0
.end method

.method private static blacklist getDescriptorMessageInfoFactory()Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    .registers 4

    .line 167
    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 168
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 169
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_19
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    return-object v1
.end method

.method private static blacklist isProto2(Landroid/net/connectivity/com/google/protobuf/MessageInfo;)Z
    .registers 3
    .param p0, "messageInfo"    # Landroid/net/connectivity/com/google/protobuf/MessageInfo;

    .line 115
    invoke-interface {p0}, Landroid/net/connectivity/com/google/protobuf/MessageInfo;->getSyntax()Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO2:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;)Landroid/net/connectivity/com/google/protobuf/Schema;
    .registers 10
    .param p1, "messageInfo"    # Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/net/connectivity/com/google/protobuf/MessageInfo;",
            ")",
            "Landroid/net/connectivity/com/google/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 77
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->isProto2(Landroid/net/connectivity/com/google/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 78
    nop

    .line 81
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/NewInstanceSchemas;->lite()Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 82
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->lite()Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    move-result-object v4

    .line 83
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 84
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemas;->lite()Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    move-result-object v6

    .line 85
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->lite()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    move-result-object v7

    .line 78
    move-object v1, p0

    move-object v2, p1

    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v2, "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    invoke-static/range {v1 .. v7}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    move-result-object p0

    move-object v0, v1

    move-object v1, v2

    .end local v2    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .local v0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    goto :goto_43

    .line 86
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .restart local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    :cond_2c
    move-object v0, p0

    move-object v1, p1

    .line 89
    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .restart local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/NewInstanceSchemas;->lite()Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 90
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->lite()Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    move-result-object v3

    .line 91
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 93
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->lite()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    move-result-object v6

    .line 86
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    move-result-object p0

    .line 77
    :goto_43
    return-object p0

    .line 95
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .restart local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    :cond_44
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .restart local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v1    # "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->isProto2(Landroid/net/connectivity/com/google/protobuf/MessageInfo;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 96
    nop

    .line 99
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/NewInstanceSchemas;->full()Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 100
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->full()Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    move-result-object v3

    .line 101
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 102
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemas;->full()Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    move-result-object v5

    .line 103
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->full()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    move-result-object v6

    .line 96
    invoke-static/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_7c

    .line 104
    :cond_66
    nop

    .line 107
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/NewInstanceSchemas;->full()Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 108
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;->full()Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;

    move-result-object v3

    .line 109
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 111
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/MapFieldSchemas;->full()Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;

    move-result-object v6

    .line 104
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/net/connectivity/com/google/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;Landroid/net/connectivity/com/google/protobuf/ListFieldSchema;Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MapFieldSchema;)Landroid/net/connectivity/com/google/protobuf/MessageSchema;

    move-result-object p0

    .line 95
    :goto_7c
    return-object p0
.end method


# virtual methods
.method public blacklist createSchema(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/Schema;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Landroid/net/connectivity/com/google/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 56
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->messageInfoFactory:Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/MessageInfo;

    move-result-object v0

    .line 59
    .local v0, "messageInfo":Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 60
    const-class v1, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 62
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 63
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemas;->lite()Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 64
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageInfo;->getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSetSchema;->newSchema(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 67
    :cond_28
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 68
    invoke-static {}, Landroid/net/connectivity/com/google/protobuf/ExtensionSchemas;->full()Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;

    move-result-object v2

    .line 69
    invoke-interface {v0}, Landroid/net/connectivity/com/google/protobuf/MessageInfo;->getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;

    move-result-object v3

    .line 66
    invoke-static {v1, v2, v3}, Landroid/net/connectivity/com/google/protobuf/MessageSetSchema;->newSchema(Landroid/net/connectivity/com/google/protobuf/UnknownFieldSchema;Landroid/net/connectivity/com/google/protobuf/ExtensionSchema;Landroid/net/connectivity/com/google/protobuf/MessageLite;)Landroid/net/connectivity/com/google/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 72
    :cond_39
    invoke-static {p1, v0}, Landroid/net/connectivity/com/google/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/MessageInfo;)Landroid/net/connectivity/com/google/protobuf/Schema;

    move-result-object v1

    return-object v1
.end method
