.class public final Lorg/apache/http/util/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 51
    invoke-static {}, Lorg/apache/http/util/ExceptionUtils;->getInitCauseMethod()Ljava/lang/reflect/Method;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    #@6
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getInitCauseMethod()Ljava/lang/reflect/Method;
    .locals 4

    #@0
    .prologue
    .line 64
    const/4 v2, 0x1

    #@1
    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    #@3
    const-class v2, Ljava/lang/Throwable;

    #@5
    const/4 v3, 0x0

    #@6
    aput-object v2, v1, v3

    #@8
    .line 65
    .local v1, "paramsClasses":[Ljava/lang/Class;
    const-class v2, Ljava/lang/Throwable;

    #@a
    const-string/jumbo v3, "initCause"

    #@d
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 66
    :catch_0
    move-exception v0

    #@13
    .line 67
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const/4 v2, 0x0

    #@14
    return-object v2
.end method

.method public static initCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .param p1, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 78
    sget-object v1, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 80
    :try_start_0
    sget-object v1, Lorg/apache/http/util/ExceptionUtils;->INIT_CAUSE_METHOD:Ljava/lang/reflect/Method;

    #@6
    const/4 v2, 0x1

    #@7
    new-array v2, v2, [Ljava/lang/Object;

    #@9
    const/4 v3, 0x0

    #@a
    aput-object p1, v2, v3

    #@c
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 77
    :cond_0
    :goto_0
    return-void

    #@10
    .line 81
    :catch_0
    move-exception v0

    #@11
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
