.class public final synthetic Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/app/ChooserActivity;

.field public final synthetic blacklist f$1:Lcom/android/internal/app/ChooserListAdapter;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/app/ChooserListAdapter;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/app/ChooserActivity;

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$$ExternalSyntheticLambda2;->f$1:Lcom/android/internal/app/ChooserListAdapter;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, v1, p1}, Lcom/android/internal/app/ChooserActivity;->$r8$lambda$lMHhBWOaf1aF1o2xkBOVl9aCyG8(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ChooserListAdapter;Ljava/util/List;)V

    return-void
.end method
