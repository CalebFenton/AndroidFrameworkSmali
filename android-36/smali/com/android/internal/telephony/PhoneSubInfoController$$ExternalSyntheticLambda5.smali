.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Landroid/telephony/ImsiEncryptionInfo;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/telephony/ImsiEncryptionInfo;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ImsiEncryptionInfo;

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda5;->f$0:Landroid/telephony/ImsiEncryptionInfo;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$e3Bsu0mofAg6jQzKS_cpG8XojnA(Landroid/telephony/ImsiEncryptionInfo;Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
