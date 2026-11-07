.class public final synthetic Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Landroid/view/contentprotection/ContentProtectionEventProcessor;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/view/contentprotection/ContentProtectionEventProcessor;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda3;->f$0:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda3;->f$0:Landroid/view/contentprotection/ContentProtectionEventProcessor;

    check-cast p1, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    invoke-static {v0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor;->$r8$lambda$PQDG6py02x6Mgv7V-XsMceOAhAA(Landroid/view/contentprotection/ContentProtectionEventProcessor;Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;)V

    return-void
.end method
