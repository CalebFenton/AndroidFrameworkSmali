.class public final synthetic Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:[Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>([Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$$ExternalSyntheticLambda1;->f$0:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/os/ZygoteConnection;->lambda$handleApiDenylistExemptions$0([Ljava/lang/String;)V

    return-void
.end method
