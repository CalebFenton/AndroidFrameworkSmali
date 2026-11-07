.class public final synthetic Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic blacklist f$0:I

.field public final synthetic blacklist f$1:Ljava/time/Instant;


# direct methods
.method public synthetic constructor blacklist <init>(ILjava/time/Instant;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;->f$0:I

    iput-object p2, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;->f$1:Ljava/time/Instant;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget v0, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;->f$0:I

    iget-object v1, p0, Lcom/android/ims/rcs/uce/request/ContactThrottlingList$$ExternalSyntheticLambda2;->f$1:Ljava/time/Instant;

    check-cast p1, Landroid/net/Uri;

    invoke-static {v0, v1, p1}, Lcom/android/ims/rcs/uce/request/ContactThrottlingList;->lambda$addToThrottlingList$0(ILjava/time/Instant;Landroid/net/Uri;)Lcom/android/ims/rcs/uce/request/ContactThrottlingList$ContactInfo;

    move-result-object p1

    return-object p1
.end method
