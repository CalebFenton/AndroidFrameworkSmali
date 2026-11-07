.class public final synthetic Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfDump$$ExternalSyntheticLambda0;->f$0:Ljava/io/PrintWriter;

    check-cast p1, Landroid/net/connectivity/com/android/net/module/util/Struct;

    check-cast p2, Landroid/net/connectivity/com/android/net/module/util/Struct;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfDump;->lambda$dumpRawMap$0(Ljava/io/PrintWriter;Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    return-void
.end method
