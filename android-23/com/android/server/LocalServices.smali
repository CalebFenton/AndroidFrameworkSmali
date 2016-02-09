.class public final Lcom/android/server/LocalServices;
.super Ljava/lang/Object;
.source "LocalServices.java"


# static fields
.field private static final sLocalServiceObjects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    #@2
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@5
    .line 33
    sput-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    #@7
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static addService(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 53
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "service":Ljava/lang/Object;, "TT;"
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 54
    :try_start_0
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 55
    new-instance v0, Ljava/lang/IllegalStateException;

    #@d
    const-string/jumbo v2, "Overriding service registration"

    #@10
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 53
    :catchall_0
    move-exception v0

    #@15
    monitor-exit v1

    #@16
    throw v0

    #@17
    .line 57
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    #@19
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit v1

    #@1d
    .line 52
    return-void
.end method

.method public static getService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v1, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    #@2
    monitor-enter v1

    #@3
    .line 45
    :try_start_0
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 44
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method
