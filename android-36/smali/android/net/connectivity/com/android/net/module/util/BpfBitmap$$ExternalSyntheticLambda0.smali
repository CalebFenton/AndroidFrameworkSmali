.class public final synthetic Landroid/net/connectivity/com/android/net/module/util/BpfBitmap$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;

    return-void
.end method


# virtual methods
.method public final blacklist accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap$$ExternalSyntheticLambda0;->f$0:Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;

    check-cast p1, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    check-cast p2, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->$r8$lambda$GIvQEKS83DJQP7pPaA8WEKbFQN8(Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$S64;)V

    return-void
.end method
