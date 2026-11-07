.class public final synthetic Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;

    return-void
.end method


# virtual methods
.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;

    invoke-static {v0}, Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;->$r8$lambda$fkIRe7UixWD5oJT6J6Hp2Je-gII(Lcom/android/internal/app/NoAppsAvailableEmptyStateProvider;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
