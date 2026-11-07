.class public final synthetic Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/List;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsInt(Ljava/lang/Object;)I
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/content/pm/verify/domain/DomainVerificationManager$$ExternalSyntheticLambda0;->f$0:Ljava/util/List;

    check-cast p1, Landroid/content/pm/verify/domain/DomainOwner;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method
