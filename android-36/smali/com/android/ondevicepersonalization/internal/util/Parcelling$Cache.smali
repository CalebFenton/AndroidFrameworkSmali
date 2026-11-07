.class public Lcom/android/ondevicepersonalization/internal/util/Parcelling$Cache;
.super Ljava/lang/Object;
.source "Parcelling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ondevicepersonalization/internal/util/Parcelling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cache"
.end annotation


# static fields
.field private static blacklist sCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class;",
            "Lcom/android/ondevicepersonalization/internal/util/Parcelling;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 61
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/ondevicepersonalization/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Ljava/lang/Class;)Lcom/android/ondevicepersonalization/internal/util/Parcelling;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/ondevicepersonalization/internal/util/Parcelling<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 67
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/ondevicepersonalization/internal/util/Parcelling;

    return-object v0
.end method

.method public static blacklist getOrCreate(Ljava/lang/Class;)Lcom/android/ondevicepersonalization/internal/util/Parcelling;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/ondevicepersonalization/internal/util/Parcelling<",
            "*>;>(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 86
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    invoke-static {p0}, Lcom/android/ondevicepersonalization/internal/util/Parcelling$Cache;->get(Ljava/lang/Class;)Lcom/android/ondevicepersonalization/internal/util/Parcelling;

    move-result-object v0

    .line 87
    .local v0, "cached":Lcom/android/ondevicepersonalization/internal/util/Parcelling;, "TP;"
    if-eqz v0, :cond_7

    .line 88
    return-object v0

    .line 91
    :cond_7
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/ondevicepersonalization/internal/util/Parcelling;

    invoke-static {v1}, Lcom/android/ondevicepersonalization/internal/util/Parcelling$Cache;->put(Lcom/android/ondevicepersonalization/internal/util/Parcelling;)Lcom/android/ondevicepersonalization/internal/util/Parcelling;

    move-result-object v1
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_11} :catch_12

    return-object v1

    .line 92
    :catch_12
    move-exception v1

    .line 93
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static blacklist put(Lcom/android/ondevicepersonalization/internal/util/Parcelling;)Lcom/android/ondevicepersonalization/internal/util/Parcelling;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/ondevicepersonalization/internal/util/Parcelling<",
            "*>;>(TP;)TP;"
        }
    .end annotation

    .line 76
    .local p0, "parcelling":Lcom/android/ondevicepersonalization/internal/util/Parcelling;, "TP;"
    sget-object v0, Lcom/android/ondevicepersonalization/internal/util/Parcelling$Cache;->sCache:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-object p0
.end method
