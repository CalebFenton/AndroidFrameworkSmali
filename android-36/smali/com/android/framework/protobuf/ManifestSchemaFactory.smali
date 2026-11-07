.class final Lcom/android/framework/protobuf/ManifestSchemaFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/android/framework/protobuf/SchemaFactory;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
    }
.end annotation


# static fields
.field private static final blacklist EMPTY_FACTORY:Lcom/android/framework/protobuf/MessageInfoFactory;


# instance fields
.field private final blacklist messageInfoFactory:Lcom/android/framework/protobuf/MessageInfoFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 152
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$1;

    invoke-direct {v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory$1;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/android/framework/protobuf/MessageInfoFactory;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-static {}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->getDefaultMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;-><init>(Lcom/android/framework/protobuf/MessageInfoFactory;)V

    .line 46
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/framework/protobuf/MessageInfoFactory;)V
    .registers 3
    .param p1, "messageInfoFactory"    # Lcom/android/framework/protobuf/MessageInfoFactory;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageInfoFactory;

    iput-object v0, p0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/android/framework/protobuf/MessageInfoFactory;

    .line 50
    return-void
.end method

.method private static blacklist getDefaultMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;
    .registers 4

    .line 119
    new-instance v0, Lcom/android/framework/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/framework/protobuf/MessageInfoFactory;

    .line 120
    invoke-static {}, Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->getDescriptorMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/android/framework/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;-><init>([Lcom/android/framework/protobuf/MessageInfoFactory;)V

    .line 119
    return-object v0
.end method

.method private static blacklist getDescriptorMessageInfoFactory()Lcom/android/framework/protobuf/MessageInfoFactory;
    .registers 4

    .line 167
    :try_start_0
    const-string v0, "com.android.framework.protobuf.DescriptorMessageInfoFactory"

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

    check-cast v1, Lcom/android/framework/protobuf/MessageInfoFactory;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 169
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_19
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/framework/protobuf/ManifestSchemaFactory;->EMPTY_FACTORY:Lcom/android/framework/protobuf/MessageInfoFactory;

    return-object v1
.end method

.method private static blacklist isProto2(Lcom/android/framework/protobuf/MessageInfo;)Z
    .registers 3
    .param p0, "messageInfo"    # Lcom/android/framework/protobuf/MessageInfo;

    .line 115
    invoke-interface {p0}, Lcom/android/framework/protobuf/MessageInfo;->getSyntax()Lcom/android/framework/protobuf/ProtoSyntax;

    move-result-object v0

    sget-object v1, Lcom/android/framework/protobuf/ProtoSyntax;->PROTO2:Lcom/android/framework/protobuf/ProtoSyntax;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;)Lcom/android/framework/protobuf/Schema;
    .registers 10
    .param p1, "messageInfo"    # Lcom/android/framework/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/MessageInfo;",
            ")",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 76
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 77
    invoke-static {p1}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->isProto2(Lcom/android/framework/protobuf/MessageInfo;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 78
    nop

    .line 81
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->lite()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v3

    .line 82
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->lite()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v4

    .line 83
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v5

    .line 84
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->lite()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v6

    .line 85
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->lite()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v7

    .line 78
    move-object v1, p0

    move-object v2, p1

    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v2, "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    invoke-static/range {v1 .. v7}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    move-object v0, v1

    move-object v1, v2

    .end local v2    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    .local v0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    goto :goto_43

    .line 86
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    .restart local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    :cond_2c
    move-object v0, p0

    move-object v1, p1

    .line 89
    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    .restart local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->lite()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->lite()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v3

    .line 91
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 93
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->lite()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v6

    .line 86
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    .line 77
    :goto_43
    return-object p0

    .line 95
    .end local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local v1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    .restart local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    :cond_44
    move-object v0, p0

    move-object v1, p1

    .end local p0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    .restart local v0    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local v1    # "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    invoke-static {v1}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->isProto2(Lcom/android/framework/protobuf/MessageInfo;)Z

    move-result p0

    if-eqz p0, :cond_66

    .line 96
    nop

    .line 99
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->full()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 100
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->full()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v3

    .line 101
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 102
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->full()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v5

    .line 103
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->full()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v6

    .line 96
    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    goto :goto_7c

    .line 104
    :cond_66
    nop

    .line 107
    invoke-static {}, Lcom/android/framework/protobuf/NewInstanceSchemas;->full()Lcom/android/framework/protobuf/NewInstanceSchema;

    move-result-object v2

    .line 108
    invoke-static {}, Lcom/android/framework/protobuf/ListFieldSchema;->full()Lcom/android/framework/protobuf/ListFieldSchema;

    move-result-object v3

    .line 109
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v4

    .line 111
    invoke-static {}, Lcom/android/framework/protobuf/MapFieldSchemas;->full()Lcom/android/framework/protobuf/MapFieldSchema;

    move-result-object v6

    .line 104
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/framework/protobuf/MessageSchema;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;Lcom/android/framework/protobuf/NewInstanceSchema;Lcom/android/framework/protobuf/ListFieldSchema;Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MapFieldSchema;)Lcom/android/framework/protobuf/MessageSchema;

    move-result-object p0

    .line 95
    :goto_7c
    return-object p0
.end method


# virtual methods
.method public blacklist createSchema(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/android/framework/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    .line 56
    iget-object v0, p0, Lcom/android/framework/protobuf/ManifestSchemaFactory;->messageInfoFactory:Lcom/android/framework/protobuf/MessageInfoFactory;

    invoke-interface {v0, p1}, Lcom/android/framework/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/MessageInfo;

    move-result-object v0

    .line 59
    .local v0, "messageInfo":Lcom/android/framework/protobuf/MessageInfo;
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageInfo;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 60
    const-class v1, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 62
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 63
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->lite()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v2

    .line 64
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    .line 61
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSetSchema;->newSchema(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 67
    :cond_28
    invoke-static {}, Lcom/android/framework/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/android/framework/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 68
    invoke-static {}, Lcom/android/framework/protobuf/ExtensionSchemas;->full()Lcom/android/framework/protobuf/ExtensionSchema;

    move-result-object v2

    .line 69
    invoke-interface {v0}, Lcom/android/framework/protobuf/MessageInfo;->getDefaultInstance()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3

    .line 66
    invoke-static {v1, v2, v3}, Lcom/android/framework/protobuf/MessageSetSchema;->newSchema(Lcom/android/framework/protobuf/UnknownFieldSchema;Lcom/android/framework/protobuf/ExtensionSchema;Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/MessageSetSchema;

    move-result-object v1

    return-object v1

    .line 72
    :cond_39
    invoke-static {p1, v0}, Lcom/android/framework/protobuf/ManifestSchemaFactory;->newSchema(Ljava/lang/Class;Lcom/android/framework/protobuf/MessageInfo;)Lcom/android/framework/protobuf/Schema;

    move-result-object v1

    return-object v1
.end method
