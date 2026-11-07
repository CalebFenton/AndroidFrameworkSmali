.class public final synthetic Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/RadioSimProxy;

.field public final synthetic blacklist f$1:Lcom/android/internal/telephony/RILRequest;

.field public final synthetic blacklist f$10:Ljava/lang/String;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/lang/String;

.field public final synthetic blacklist f$5:I

.field public final synthetic blacklist f$6:I

.field public final synthetic blacklist f$7:I

.field public final synthetic blacklist f$8:Ljava/lang/String;

.field public final synthetic blacklist f$9:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iput-object p2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$1:Lcom/android/internal/telephony/RILRequest;

    iput p3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$2:I

    iput p4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$3:I

    iput-object p5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$4:Ljava/lang/String;

    iput p6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$5:I

    iput p7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$6:I

    iput p8, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$7:I

    iput-object p9, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$8:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$9:Ljava/lang/String;

    iput-object p11, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$10:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist runOrThrow()V
    .registers 12

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$0:Lcom/android/internal/telephony/RadioSimProxy;

    iget-object v1, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$1:Lcom/android/internal/telephony/RILRequest;

    iget v2, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$2:I

    iget v3, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$3:I

    iget-object v4, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$4:Ljava/lang/String;

    iget v5, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$5:I

    iget v6, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$6:I

    iget v7, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$7:I

    iget-object v8, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$8:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$9:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/internal/telephony/RIL$$ExternalSyntheticLambda94;->f$10:Ljava/lang/String;

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/RIL;->$r8$lambda$BmP1ombq1TbWf00zlWn-ZHaYVL8(Lcom/android/internal/telephony/RadioSimProxy;Lcom/android/internal/telephony/RILRequest;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
