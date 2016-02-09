.class public final Ljava/lang/Void;
.super Ljava/lang/Object;
.source "Void.java"


# static fields
.field public static final TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-static {}, Ljava/lang/Void;->lookupType()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    sput-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    #@6
    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static lookupType()Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 40
    :try_start_0
    const-class v2, Ljava/lang/Runnable;

    #@2
    const-string/jumbo v3, "run"

    #@5
    sget-object v4, Llibcore/util/EmptyArray;->CLASS:[Ljava/lang/Class;

    #@7
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@a
    move-result-object v1

    #@b
    .line 41
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 42
    :catch_0
    move-exception v0

    #@11
    .line 43
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@16
    throw v2
.end method
