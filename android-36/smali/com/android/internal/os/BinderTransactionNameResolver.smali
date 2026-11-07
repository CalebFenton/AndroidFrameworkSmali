.class public Lcom/android/internal/os/BinderTransactionNameResolver;
.super Ljava/lang/Object;
.source "BinderTransactionNameResolver.java"


# static fields
.field private static final blacklist NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

.field private static final blacklist USE_TRANSACTION_CODES_FOR_UNKNOWN_METHODS:Z


# instance fields
.field private final blacklist mGetDefaultTransactionNameMethods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 42
    invoke-static {}, Lcom/android/internal/os/Flags;->useTransactionCodesForUnknownMethods()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/os/BinderTransactionNameResolver;->USE_TRANSACTION_CODES_FOR_UNKNOWN_METHODS:Z

    .line 56
    :try_start_6
    const-class v0, Lcom/android/internal/os/BinderTransactionNameResolver;

    const-string v1, "noDefaultTransactionName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_18} :catch_1a

    .line 60
    nop

    .line 61
    return-void

    .line 58
    :catch_1a
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    return-void
.end method

.method public static blacklist noDefaultTransactionName(I)Ljava/lang/String;
    .registers 2
    .param p0, "transactionCode"    # I

    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getMethodName(Ljava/lang/Class;I)Ljava/lang/String;
    .registers 8
    .param p2, "transactionCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 72
    .local p1, "binderClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/os/Binder;>;"
    iget-object v0, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 73
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_39

    .line 75
    :try_start_a
    const-string v1, "getDefaultTransactionName"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_18} :catch_19

    .line 78
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .local v1, "method":Ljava/lang/reflect/Method;
    goto :goto_1d

    .line 76
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    sget-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

    move-object v1, v0

    .line 79
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_1d
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_32

    .line 80
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_30

    goto :goto_32

    :cond_30
    move-object v0, v1

    goto :goto_34

    .line 81
    :cond_32
    :goto_32
    sget-object v0, Lcom/android/internal/os/BinderTransactionNameResolver;->NO_GET_DEFAULT_TRANSACTION_NAME_METHOD:Ljava/lang/reflect/Method;

    .line 83
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :goto_34
    iget-object v1, p0, Lcom/android/internal/os/BinderTransactionNameResolver;->mGetDefaultTransactionNameMethods:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_39
    :try_start_39
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 88
    .local v1, "methodName":Ljava/lang/String;
    sget-boolean v2, Lcom/android/internal/os/BinderTransactionNameResolver;->USE_TRANSACTION_CODES_FOR_UNKNOWN_METHODS:Z

    if-eqz v2, :cond_59

    .line 89
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 90
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2
    :try_end_56
    .catch Ljava/lang/IllegalAccessException; {:try_start_39 .. :try_end_56} :catch_5a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_39 .. :try_end_56} :catch_5a

    goto :goto_58

    .line 91
    :cond_57
    move-object v2, v1

    .line 89
    :goto_58
    return-object v2

    .line 93
    :cond_59
    return-object v1

    .line 95
    .end local v1    # "methodName":Ljava/lang/String;
    :catch_5a
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
