.class public final synthetic Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/contentprotection/ContentProtectionEventProcessor;

.field public final synthetic blacklist f$1:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/contentprotection/ContentProtectionEventProcessor;Landroid/content/pm/ParceledListSlice;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;->f$0:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    iput-object p2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;->f$1:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;->f$0:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda6;->f$1:Landroid/content/pm/ParceledListSlice;

    invoke-static {v0, v1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->$r8$lambda$HlV2FQ4cMFHRA5ngMxr0RyYycV8(Landroid/view/contentprotection/ContentProtectionEventProcessor;Landroid/content/pm/ParceledListSlice;)V

    return-void
.end method
