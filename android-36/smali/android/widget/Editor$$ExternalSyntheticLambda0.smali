.class public final synthetic Landroid/widget/Editor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/window/OnBackInvokedCallback;


# instance fields
.field public final synthetic blacklist f$0:Landroid/widget/Editor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public final whitelist onBackInvoked()V
    .registers 2

    .line 0
    iget-object v0, p0, Landroid/widget/Editor$$ExternalSyntheticLambda0;->f$0:Landroid/widget/Editor;

    invoke-virtual {v0}, Landroid/widget/Editor;->stopTextActionMode()V

    return-void
.end method
