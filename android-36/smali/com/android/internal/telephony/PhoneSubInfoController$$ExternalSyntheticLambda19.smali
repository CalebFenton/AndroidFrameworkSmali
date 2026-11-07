.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda19;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda19;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$t3-0FlnLyRa4re1dmWiP1ahfaOM(Lcom/android/internal/telephony/PhoneSubInfoController;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
