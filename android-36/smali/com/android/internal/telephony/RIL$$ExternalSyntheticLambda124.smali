.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioSimProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:Ljava/lang/String;

.field public final synthetic blacklist f$3:Z

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput-object p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$2:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$3:Z

    iput-object p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$5:I

    iput-object p7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$6:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget-object v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$2:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$3:Z

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$5:I

    iget-object v6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda124;->f$6:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/RIL;->$r8$lambda$HkR25dQ7ZrcKFKfFFW8JYsNGqLM(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    return-void
.end method
