.class Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;
.super Ljava/lang/Object;
.source "LSSerializerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/dom3/LSSerializerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThrowableMethods"
.end annotation


# static fields
.field private static greylist fgThrowableInitCauseMethod:Ljava/lang/reflect/Method; = null

.field private static greylist fgThrowableMethodsAvailable:Z = false


# direct methods
.method static bridge synthetic greylist -$$Nest$sfgetfgThrowableInitCauseMethod()Ljava/lang/reflect/Method;
    .registers 1

    .line 0
    sget-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static bridge synthetic greylist -$$Nest$sfgetfgThrowableMethodsAvailable()Z
    .registers 1

    .line 0
    sget-boolean v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    return v0
.end method

.method static constructor greylist <clinit>()V
    .registers 6

    const/4 v0, 0x0

    .line 1526
    :try_start_1
    const-class v1, Ljava/lang/Throwable;

    const-string v2, "initCause"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Throwable;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 1527
    sput-boolean v3, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    return-void

    :catch_15
    const/4 v1, 0x0

    .line 1532
    sput-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    .line 1533
    sput-boolean v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    return-void
.end method

.method private constructor greylist <init>()V
    .registers 1

    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
