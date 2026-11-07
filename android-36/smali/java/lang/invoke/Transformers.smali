.class public Ljava/lang/invoke/Transformers;
.super Ljava/lang/Object;
.source "Transformers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/invoke/Transformers$TableSwitch;,
        Ljava/lang/invoke/Transformers$Loop;,
        Ljava/lang/invoke/Transformers$ExplicitCastArguments;,
        Ljava/lang/invoke/Transformers$AsTypeAdapter;,
        Ljava/lang/invoke/Transformers$InsertArguments;,
        Ljava/lang/invoke/Transformers$FoldArguments;,
        Ljava/lang/invoke/Transformers$CollectArguments;,
        Ljava/lang/invoke/Transformers$FilterArguments;,
        Ljava/lang/invoke/Transformers$Collector;,
        Ljava/lang/invoke/Transformers$Spreader;,
        Ljava/lang/invoke/Transformers$Invoker;,
        Ljava/lang/invoke/Transformers$VarargsCollector;,
        Ljava/lang/invoke/Transformers$PermuteArguments;,
        Ljava/lang/invoke/Transformers$FilterReturnValue;,
        Ljava/lang/invoke/Transformers$BindTo;,
        Ljava/lang/invoke/Transformers$Construct;,
        Ljava/lang/invoke/Transformers$ArrayConstructor;,
        Ljava/lang/invoke/Transformers$ZeroValue;,
        Ljava/lang/invoke/Transformers$ReferenceIdentity;,
        Ljava/lang/invoke/Transformers$GuardWithTest;,
        Ljava/lang/invoke/Transformers$TryFinally;,
        Ljava/lang/invoke/Transformers$CatchException;,
        Ljava/lang/invoke/Transformers$DropArguments;,
        Ljava/lang/invoke/Transformers$AlwaysThrow;,
        Ljava/lang/invoke/Transformers$Transformer;
    }
.end annotation


# static fields
.field private static final greylist-max-o TRANSFORM_INTERNAL:Ljava/lang/reflect/Method;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTRANSFORM_INTERNAL()Ljava/lang/reflect/Method;
    .registers 1

    sget-object v0, Ljava/lang/invoke/Transformers;->TRANSFORM_INTERNAL:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 50
    :try_start_0
    const-class v0, Ljava/lang/invoke/MethodHandle;

    const-string v1, "transformInternal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ldalvik/system/EmulatedStackFrame;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/Transformers;->TRANSFORM_INTERNAL:Ljava/lang/reflect/Method;
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_12} :catch_14

    .line 55
    nop

    .line 56
    return-void

    .line 53
    :catch_14
    move-exception v0

    .line 54
    .local v0, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
