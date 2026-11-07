.class public final synthetic Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/ObservableServiceConnection;

.field public final synthetic blacklist f$1:Lcom/android/internal/util/ObservableServiceConnection$Callback;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/ObservableServiceConnection;Lcom/android/internal/util/ObservableServiceConnection$Callback;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/ObservableServiceConnection;

    iput-object p2, p0, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/util/ObservableServiceConnection$Callback;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/util/ObservableServiceConnection;

    iget-object v1, p0, Lcom/android/internal/util/ObservableServiceConnection$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/util/ObservableServiceConnection$Callback;

    invoke-static {v0, v1}, Lcom/android/internal/util/ObservableServiceConnection;->$r8$lambda$ELSya9E5t_tfA1w7JXqAHaL9Fxg(Lcom/android/internal/util/ObservableServiceConnection;Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    return-void
.end method
