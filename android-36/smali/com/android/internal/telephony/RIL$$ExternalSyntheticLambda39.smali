.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioImsProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:[Lcom/android/internal/telephony/SrvccConnection;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/SrvccConnection;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;->f$0:Lcom/android/internal/telephony/RadioImsProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;->f$2:[Lcom/android/internal/telephony/SrvccConnection;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;->f$0:Lcom/android/internal/telephony/RadioImsProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object p0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda39;->f$2:[Lcom/android/internal/telephony/SrvccConnection;

    invoke-static {v0, v1, p0}, Lcom/android/internal/telephony/RIL;->$r8$lambda$GRpz8uObYDTAxLiHmC7EAfE8CVg(Lcom/android/internal/telephony/RadioImsProxy;Lcom/android/internal/telephony/RILRequest;[Lcom/android/internal/telephony/SrvccConnection;)V

    return-void
.end method
