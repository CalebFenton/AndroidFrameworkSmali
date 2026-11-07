.class Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;
.super Ljava/lang/Object;
.source "GeneratedMessageInfoFactory.java"

# interfaces
.implements Lcom/android/framework/protobuf/MessageInfoFactory;


# static fields
.field private static final blacklist instance:Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 37
    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;

    invoke-direct {v0}, Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;-><init>()V

    sput-object v0, Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;->instance:Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;
    .registers 1

    .line 43
    sget-object v0, Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;->instance:Lcom/android/framework/protobuf/GeneratedMessageInfoFactory;

    return-object v0
.end method


# virtual methods
.method public blacklist isSupported(Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 48
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public blacklist messageInfoFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/MessageInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/MessageInfo;"
        }
    .end annotation

    .line 53
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 58
    :try_start_8
    const-class v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 58
    invoke-static {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->getDefaultInstance(Ljava/lang/Class;)Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->buildMessageInfo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/MessageInfo;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    .line 58
    return-object v0

    .line 61
    :catch_19
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get message info for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
