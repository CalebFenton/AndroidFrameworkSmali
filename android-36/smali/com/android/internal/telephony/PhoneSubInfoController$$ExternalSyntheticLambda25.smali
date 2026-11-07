.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

.field public final synthetic blacklist f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda25;->f$1:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$HAddreWi61BWCSjKxVt9WxMudD8(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
