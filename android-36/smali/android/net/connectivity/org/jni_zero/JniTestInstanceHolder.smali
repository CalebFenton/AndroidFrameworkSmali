.class public Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
.super Ljava/lang/Object;
.source "JniTestInstanceHolder.java"


# static fields
.field static blacklist sAllOverrides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist value:Ljava/lang/Object;


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized blacklist create()Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    .registers 3

    const-class v0, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    monitor-enter v0

    .line 25
    :try_start_3
    sget-object v1, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->sAllOverrides:Ljava/util/ArrayList;

    if-nez v1, :cond_e

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->sAllOverrides:Ljava/util/ArrayList;

    .line 28
    :cond_e
    new-instance v1, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;

    invoke-direct {v1}, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;-><init>()V

    .line 29
    .local v1, "ret":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    sget-object v2, Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;->sAllOverrides:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    .line 30
    monitor-exit v0

    return-object v1

    .line 24
    .end local v1    # "ret":Landroid/net/connectivity/org/jni_zero/JniTestInstanceHolder;
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v1
.end method
