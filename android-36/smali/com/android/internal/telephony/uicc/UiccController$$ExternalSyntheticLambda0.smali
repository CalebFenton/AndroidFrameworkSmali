.class public final synthetic Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/uicc/UiccController;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Lcom/android/internal/telephony/IccCardConstants$State;

.field public final synthetic blacklist f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V
    .registers 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/uicc/UiccController;

    iput p2, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object p4, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$0:Lcom/android/internal/telephony/uicc/UiccController;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$2:Lcom/android/internal/telephony/IccCardConstants$State;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccController$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->$r8$lambda$zYVo8ZXisvE5FLaCrh3gmYU160Y(Lcom/android/internal/telephony/uicc/UiccController;ILcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/String;)V

    return-void
.end method
