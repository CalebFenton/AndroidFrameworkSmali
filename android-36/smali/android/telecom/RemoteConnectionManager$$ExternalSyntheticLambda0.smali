.class public final synthetic Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telecom/RemoteConnectionManager;

.field public final synthetic blacklist f$1:Lcom/android/internal/telecom/IConnectionService;

.field public final synthetic blacklist f$2:Landroid/content/ComponentName;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telecom/RemoteConnectionManager;Lcom/android/internal/telecom/IConnectionService;Landroid/content/ComponentName;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/RemoteConnectionManager;

    iput-object p2, p0, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telecom/IConnectionService;

    iput-object p3, p0, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;->f$0:Landroid/telecom/RemoteConnectionManager;

    iget-object v1, p0, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;->f$1:Lcom/android/internal/telecom/IConnectionService;

    iget-object v2, p0, Landroid/telecom/RemoteConnectionManager$$ExternalSyntheticLambda0;->f$2:Landroid/content/ComponentName;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {v0, v1, v2, p1}, Landroid/telecom/RemoteConnectionManager;->$r8$lambda$EPCeorhUsJaOWB57Cvl0KG6cC5M(Landroid/telecom/RemoteConnectionManager;Lcom/android/internal/telecom/IConnectionService;Landroid/content/ComponentName;Landroid/content/ComponentName;)Landroid/telecom/RemoteConnectionService;

    move-result-object p1

    return-object p1
.end method
