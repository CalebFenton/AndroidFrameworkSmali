.class public final Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;
.super Ljava/lang/Object;
.source "GeneratedMessageLite.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "SerializedForm"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J


# instance fields
.field private final blacklist asBytes:[B

.field private final blacklist messageClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final blacklist messageClassName:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/android/framework/protobuf/MessageLite;)V
    .registers 3
    .param p1, "regularForm"    # Lcom/android/framework/protobuf/MessageLite;

    .line 1441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1442
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClass:Ljava/lang/Class;

    .line 1443
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    .line 1444
    invoke-interface {p1}, Lcom/android/framework/protobuf/MessageLite;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    .line 1445
    return-void
.end method

.method public static blacklist of(Lcom/android/framework/protobuf/MessageLite;)Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;
    .registers 2
    .param p0, "message"    # Lcom/android/framework/protobuf/MessageLite;

    .line 1425
    new-instance v0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;-><init>(Lcom/android/framework/protobuf/MessageLite;)V

    return-object v0
.end method

.method private blacklist readResolveFallback()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1480
    :try_start_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->resolveMessageClass()Ljava/lang/Class;

    move-result-object v0

    .line 1481
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "defaultInstance"

    .line 1482
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1483
    .local v1, "defaultInstanceField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1484
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    .line 1485
    .local v2, "defaultInstance":Lcom/android/framework/protobuf/MessageLite;
    invoke-interface {v2}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    .line 1486
    invoke-interface {v3, v4}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    .line 1487
    invoke-interface {v3}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_6e
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_23} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_23} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_2d
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_23} :catch_24

    .line 1485
    return-object v3

    .line 1496
    .end local v0    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultInstanceField":Ljava/lang/reflect/Field;
    .end local v2    # "defaultInstance":Lcom/android/framework/protobuf/MessageLite;
    :catch_24
    move-exception v0

    .line 1497
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to understand proto buffer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1494
    .end local v0    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :catch_2d
    move-exception v0

    .line 1495
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to call parsePartialFrom"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1492
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v0

    .line 1493
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call defaultInstance in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1490
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_52
    move-exception v0

    .line 1491
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find defaultInstance in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1488
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_6e
    move-exception v0

    .line 1489
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find proto buffer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist resolveMessageClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClass:Ljava/lang/Class;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClass:Ljava/lang/Class;

    goto :goto_d

    :cond_7
    iget-object v0, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_d
    return-object v0
.end method


# virtual methods
.method protected whitelist readResolve()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1455
    :try_start_0
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->resolveMessageClass()Ljava/lang/Class;

    move-result-object v0

    .line 1456
    .local v0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v1, "DEFAULT_INSTANCE"

    .line 1457
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1458
    .local v1, "defaultInstanceField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1459
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/MessageLite;

    .line 1460
    .local v2, "defaultInstance":Lcom/android/framework/protobuf/MessageLite;
    invoke-interface {v2}, Lcom/android/framework/protobuf/MessageLite;->newBuilderForType()Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->asBytes:[B

    invoke-interface {v3, v4}, Lcom/android/framework/protobuf/MessageLite$Builder;->mergeFrom([B)Lcom/android/framework/protobuf/MessageLite$Builder;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/framework/protobuf/MessageLite$Builder;->buildPartial()Lcom/android/framework/protobuf/MessageLite;

    move-result-object v3
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_23} :catch_58
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_23} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_23} :catch_36
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_23} :catch_2d
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_23} :catch_24

    return-object v3

    .line 1469
    .end local v0    # "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "defaultInstanceField":Ljava/lang/reflect/Field;
    .end local v2    # "defaultInstance":Lcom/android/framework/protobuf/MessageLite;
    :catch_24
    move-exception v0

    .line 1470
    .local v0, "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to understand proto buffer"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1467
    .end local v0    # "e":Lcom/android/framework/protobuf/InvalidProtocolBufferException;
    :catch_2d
    move-exception v0

    .line 1468
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unable to call parsePartialFrom"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1465
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_36
    move-exception v0

    .line 1466
    .local v0, "e":Ljava/lang/SecurityException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to call DEFAULT_INSTANCE in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1463
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catch_52
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-direct {p0}, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->readResolveFallback()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1461
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_58
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find proto buffer class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/framework/protobuf/GeneratedMessageLite$SerializedForm;->messageClassName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
