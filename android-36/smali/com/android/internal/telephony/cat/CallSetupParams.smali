.class Lcom/android/internal/telephony/cat/CallSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field blacklist mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field blacklist mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .registers 4

    .line 140
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 141
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 142
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method


# virtual methods
.method blacklist setIcon(Landroid/graphics/Bitmap;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 150
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v2, 0x1

    if-eqz v1, :cond_10

    iget-object v3, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v3, :cond_10

    .line 151
    iput-object p1, v1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    return v2

    .line 153
    :cond_10
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz p0, :cond_1b

    iget-object v1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1b

    .line 154
    iput-object p1, p0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    return v2

    :cond_1b
    return v0
.end method
