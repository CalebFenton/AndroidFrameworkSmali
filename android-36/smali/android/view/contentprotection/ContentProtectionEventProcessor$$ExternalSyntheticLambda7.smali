.class public final synthetic Landroid/view/contentprotection/ContentProtectionEventProcessor$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 0
    new-instance v0, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;

    check-cast p1, Ljava/util/List;

    invoke-direct {v0, p1}, Landroid/view/contentprotection/ContentProtectionEventProcessor$SearchGroup;-><init>(Ljava/util/List;)V

    return-object v0
.end method
