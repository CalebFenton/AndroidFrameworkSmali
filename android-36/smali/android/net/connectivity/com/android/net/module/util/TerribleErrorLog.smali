.class public Landroid/net/connectivity/com/android/net/module/util/TerribleErrorLog;
.super Ljava/lang/Object;
.source "TerribleErrorLog.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 31
    const-class v0, Landroid/net/connectivity/com/android/net/module/util/TerribleErrorLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/com/android/net/module/util/TerribleErrorLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist logTerribleError(Ljava/util/function/BiConsumer;Ljava/lang/String;II)V
    .registers 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "protoType"    # I
    .param p3, "errorType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 38
    .local p0, "statsLog":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    sget-object v0, Landroid/net/connectivity/com/android/net/module/util/TerribleErrorLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    return-void
.end method
