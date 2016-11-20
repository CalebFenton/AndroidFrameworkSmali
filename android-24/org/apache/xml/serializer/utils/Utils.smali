.class public final Lorg/apache/xml/serializer/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final messages:Lorg/apache/xml/serializer/utils/Messages;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 39
    new-instance v0, Lorg/apache/xml/serializer/utils/Messages;

    #@2
    const-class v1, Lorg/apache/xml/serializer/utils/SerializerMessages;

    #@4
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    invoke-direct {v0, v1}, Lorg/apache/xml/serializer/utils/Messages;-><init>(Ljava/lang/String;)V

    #@b
    .line 38
    sput-object v0, Lorg/apache/xml/serializer/utils/Utils;->messages:Lorg/apache/xml/serializer/utils/Messages;

    #@d
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
