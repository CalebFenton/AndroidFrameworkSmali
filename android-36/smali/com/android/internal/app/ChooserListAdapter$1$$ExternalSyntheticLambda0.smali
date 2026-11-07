.class public final synthetic Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/TextView;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/TextView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/android/internal/app/ChooserListAdapter$1$$ExternalSyntheticLambda0;->f$0:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/internal/app/ChooserListAdapter$1;->lambda$onLayoutChange$0(Landroid/widget/TextView;)V

    return-void
.end method
