.class Landroid/net/ConnectivityManager$6;
.super Landroid/net/connectivity/android/net/IOnCompleteListener$Stub;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ConnectivityManager;->setOemNetworkPreference(Landroid/net/OemNetworkPreferences;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/net/ConnectivityManager;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V
    .registers 4
    .param p1, "this$0"    # Landroid/net/ConnectivityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 6398
    iput-object p2, p0, Landroid/net/ConnectivityManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/net/ConnectivityManager$6;->val$listener:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/net/connectivity/android/net/IOnCompleteListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onComplete()V
    .registers 4

    .line 6401
    iget-object v0, p0, Landroid/net/ConnectivityManager$6;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/net/ConnectivityManager$6;->val$listener:Ljava/lang/Runnable;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Landroid/net/ConnectivityManager$6$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/net/ConnectivityManager$6$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 6402
    return-void
.end method
