.class public final synthetic Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic blacklist f$0:Ljava/lang/String;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(Ljava/lang/Object;)Z
    .registers 5

    .line 0
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object v1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    check-cast p1, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    invoke-static {v0, v1, v2, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->lambda$processViewAppearedEvent$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)Z

    move-result p1

    return p1
.end method
