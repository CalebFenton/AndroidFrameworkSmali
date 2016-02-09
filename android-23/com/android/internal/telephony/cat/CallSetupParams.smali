.class Lcom/android/internal/telephony/cat/CallSetupParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/TextMessage;Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 0
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "confirmMsg"    # Lcom/android/internal/telephony/cat/TextMessage;
    .param p3, "callMsg"    # Lcom/android/internal/telephony/cat/TextMessage;

    #@0
    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    #@3
    .line 131
    iput-object p2, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@5
    .line 132
    iput-object p3, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@7
    .line 129
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 137
    if-nez p1, :cond_0

    #@4
    .line 138
    return v1

    #@5
    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@7
    if-eqz v0, :cond_1

    #@9
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@b
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@d
    if-nez v0, :cond_1

    #@f
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@11
    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@13
    .line 142
    return v2

    #@14
    .line 143
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@16
    if-eqz v0, :cond_2

    #@18
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@1a
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@1c
    if-nez v0, :cond_2

    #@1e
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    #@20
    iput-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    #@22
    .line 145
    return v2

    #@23
    .line 147
    :cond_2
    return v1
.end method
