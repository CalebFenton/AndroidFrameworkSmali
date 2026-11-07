.class public Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;
.super Ljava/lang/Object;
.source "PhoneInternalInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneInternalInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialArgs"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;
    }
.end annotation


# instance fields
.field public final blacklist clirMode:I

.field public final blacklist eccCategory:I

.field public final blacklist intentExtras:Landroid/os/Bundle;

.field public final blacklist isEmergency:Z

.field public final blacklist uusInfo:Lcom/android/internal/telephony/UUSInfo;

.field public final blacklist videoState:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;)V
    .registers 3

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mUusInfo:Lcom/android/internal/telephony/UUSInfo;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    .line 152
    iget v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mClirMode:I

    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    .line 153
    iget-boolean v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mIsEmergency:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    .line 154
    iget v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mVideoState:I

    iput v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    .line 155
    iget-object v0, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mIntentExtras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    .line 156
    iget p1, p1, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;->mEccCategory:I

    iput p1, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    return-void
.end method
