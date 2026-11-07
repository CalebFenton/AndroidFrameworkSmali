.class public final synthetic Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

.field public final synthetic blacklist f$1:J


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    iput-wide p2, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;->f$1:J

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;->f$0:Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;

    iget-wide v1, p0, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher$$ExternalSyntheticLambda1;->f$1:J

    check-cast p1, Ljava/lang/Long;

    invoke-static {v0, v1, v2, p1}, Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;->$r8$lambda$6XRVCb2pAEgCvPTGXwYgr0_aOPo(Lcom/android/ims/rcs/uce/request/UceRequestDispatcher;JLjava/lang/Long;)V

    return-void
.end method
