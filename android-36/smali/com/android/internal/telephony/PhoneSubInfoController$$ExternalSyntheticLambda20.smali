.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$2:I

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 4

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$1:Ljava/lang/String;

    iget p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda20;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$1NqsuCt5dgbj5lx47bQiDoMivtE(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;ILcom/android/internal/telephony/Phone;)Landroid/telephony/ImsiEncryptionInfo;

    move-result-object p0

    return-object p0
.end method
