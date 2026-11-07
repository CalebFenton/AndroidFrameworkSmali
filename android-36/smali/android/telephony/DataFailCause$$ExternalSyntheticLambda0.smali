.class public final synthetic Landroid/telephony/DataFailCause$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntPredicate;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/DataFailCause$$ExternalSyntheticLambda0;->f$0:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api test(I)Z
    .registers 3

    .line 0
    iget v0, p0, Landroid/telephony/DataFailCause$$ExternalSyntheticLambda0;->f$0:I

    invoke-static {v0, p1}, Landroid/telephony/DataFailCause;->lambda$isRadioRestartFailure$0(II)Z

    move-result p1

    return p1
.end method
