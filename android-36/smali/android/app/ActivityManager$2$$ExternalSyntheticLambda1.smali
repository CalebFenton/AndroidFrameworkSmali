.class public final synthetic Landroid/app/ActivityManager$2$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic blacklist f$0:[I

.field public final synthetic blacklist f$1:[I


# direct methods
.method public synthetic constructor blacklist <init>([I[I)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda1;->f$0:[I

    iput-object p2, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda1;->f$1:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda1;->f$0:[I

    iget-object v1, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda1;->f$1:[I

    check-cast p1, Landroid/app/ActivityManager$UidFrozenStateChangedCallback;

    check-cast p2, Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityManager$2;->lambda$onUidFrozenStateChanged$1([I[ILandroid/app/ActivityManager$UidFrozenStateChangedCallback;Ljava/util/concurrent/Executor;)V

    return-void
.end method
