.class public final synthetic Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/UiccController;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/IccCardConstants$State;

.field public final synthetic blacklist f$3:Ljava/lang/String;

.field public final synthetic blacklist f$4:I

.field public final synthetic blacklist f$5:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput p2, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$2:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iput p5, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$4:I

    iput-object p6, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 7

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$1:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$2:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$4:I

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda5;->f$5:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccController;->$r8$lambda$ATcts-Hm9n73GTlx0-PR7RHRs_s(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
