.class public final synthetic Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/ActivityManager$UidFrozenStateChangedCallback;

.field public final synthetic blacklist f$1:[I

.field public final synthetic blacklist f$2:[I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/ActivityManager$UidFrozenStateChangedCallback;[I[I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$UidFrozenStateChangedCallback;

    iput-object p2, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$1:[I

    iput-object p3, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$2:[I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$0:Landroid/app/ActivityManager$UidFrozenStateChangedCallback;

    iget-object v1, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$1:[I

    iget-object v2, p0, Landroid/app/ActivityManager$2$$ExternalSyntheticLambda0;->f$2:[I

    invoke-static {v0, v1, v2}, Landroid/app/ActivityManager$2;->lambda$onUidFrozenStateChanged$0(Landroid/app/ActivityManager$UidFrozenStateChangedCallback;[I[I)V

    return-void
.end method
