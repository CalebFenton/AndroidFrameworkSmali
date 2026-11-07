.class public final synthetic Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/PrintWriter;

.field public final synthetic blacklist f$1:Ljava/util/function/BiFunction;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/PrintWriter;Ljava/util/function/BiFunction;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iput-object p2, p0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;->f$0:Ljava/io/PrintWriter;

    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda1;->f$1:Ljava/util/function/BiFunction;

    check-cast p1, Landroid/net/connectivity/com/android/net/module/util/Struct;

    check-cast p2, Landroid/net/connectivity/com/android/net/module/util/Struct;

    invoke-static {v0, v1, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->lambda$dumpMap$1(Ljava/io/PrintWriter;Ljava/util/function/BiFunction;Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    return-void
.end method
