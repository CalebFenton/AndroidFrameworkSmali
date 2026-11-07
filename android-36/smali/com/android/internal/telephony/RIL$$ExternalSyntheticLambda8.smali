.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioSimProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIII)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$2:I

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$3:I

    iput p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$4:I

    iput p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$5:I

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$2:I

    iget v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$3:I

    iget v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$4:I

    iget v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda8;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/RIL;->$r8$lambda$gzQJNGwUy96wbhR4F-wkT-O3PPk(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IIII)V

    return-void
.end method
