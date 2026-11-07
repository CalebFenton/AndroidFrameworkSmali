.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioSimProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$4:I

    iput-object p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$4:I

    iget-object v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda53;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->$r8$lambda$oY2vB3l-Iy2BCS88jzS7jxKo4ME(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
