.class public final synthetic Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/PhoneSubInfoController$CallPhoneMethodHelper;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

.field public final synthetic blacklist f$1:Ljava/lang/String;

.field public final synthetic blacklist f$2:I

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:Ljava/lang/String;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;IILjava/lang/String;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iput-object p2, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$2:I

    iput p4, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$3:I

    iput-object p5, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$4:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final blacklist callMethod(Lcom/android/internal/telephony/Phone;)Ljava/lang/Object;
    .registers 8

    .line 0
    iget-object v0, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$0:Lcom/android/internal/telephony/PhoneSubInfoController;

    iget-object v1, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$2:I

    iget v3, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$3:I

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneSubInfoController$$ExternalSyntheticLambda13;->f$4:Ljava/lang/String;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneSubInfoController;->$r8$lambda$YP2POKgqq4956k-zuWnz4SLEDUM(Lcom/android/internal/telephony/PhoneSubInfoController;Ljava/lang/String;IILjava/lang/String;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
