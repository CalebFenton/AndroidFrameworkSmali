.class public final Lorg/apache/xml/serializer/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final greylist messages:Lorg/apache/xml/serializer/utils/Messages;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Lorg/apache/xml/serializer/utils/Messages;

    const-class v1, Lorg/apache/xml/serializer/utils/SerializerMessages;

    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/Messages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    return-void
.end method

.method public constructor greylist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
