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
.field private static fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

.field private static fgThrowableMethodsAvailable:Z


# direct methods
.method static synthetic -get0()Ljava/lang/reflect/Method;
    .locals 1

    #@0
    sget-object v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    #@0
    sget-boolean v0, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    #@2
    return v0
.end method

.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 1516
    sput-object v7, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    #@4
    .line 1519
    sput-boolean v6, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    #@6
    .line 1526
    :try_start_0
    const-class v1, Ljava/lang/Throwable;

    #@8
    const-string/jumbo v2, "initCause"

    #@b
    const/4 v3, 0x1

    #@c
    new-array v3, v3, [Ljava/lang/Class;

    #@e
    const-class v4, Ljava/lang/Throwable;

    #@10
    const/4 v5, 0x0

    #@11
    aput-object v4, v3, v5

    #@13
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object v1

    #@17
    sput-object v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    #@19
    .line 1527
    const/4 v1, 0x1

    #@1a
    sput-boolean v1, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1513
    .local v0, "exc":Ljava/lang/Exception;
    :goto_0
    return-void

    #@1d
    .line 1531
    .end local v0    # "exc":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    #@1e
    .line 1532
    .restart local v0    # "exc":Ljava/lang/Exception;
    sput-object v7, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableInitCauseMethod:Ljava/lang/reflect/Method;

    #@20
    .line 1533
    sput-boolean v6, Lorg/apache/xml/serializer/dom3/LSSerializerImpl$ThrowableMethods;->fgThrowableMethodsAvailable:Z

    #@22
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
