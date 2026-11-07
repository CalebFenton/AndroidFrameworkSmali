.class public final synthetic Landroid/content/ContentResolver$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/Collection;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/Collection;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$0:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/ContentResolver$$ExternalSyntheticLambda2;->f$0:Ljava/util/Collection;

    check-cast p1, Landroid/net/Uri;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
