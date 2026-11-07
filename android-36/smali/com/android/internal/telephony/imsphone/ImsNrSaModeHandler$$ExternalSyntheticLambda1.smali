.class public final synthetic Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$N1ModeSetter;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/telephony/Phone;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/Phone;

    return-void
.end method


# virtual methods
.method public final blacklist setN1ModeEnabled(ZLandroid/os/Message;)V
    .registers 3

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/imsphone/ImsNrSaModeHandler$$ExternalSyntheticLambda1;->f$0:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/Phone;->setN1ModeEnabled(ZLandroid/os/Message;)V

    return-void
.end method
