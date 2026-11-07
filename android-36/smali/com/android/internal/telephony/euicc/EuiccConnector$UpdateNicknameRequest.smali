.class Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameRequest;
.super Ljava/lang/Object;
.source "EuiccConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/euicc/EuiccConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UpdateNicknameRequest"
.end annotation


# instance fields
.field blacklist mCallback:Lcom/android/internal/telephony/euicc/EuiccConnector$UpdateNicknameCommandCallback;

.field blacklist mIccid:Ljava/lang/String;

.field blacklist mNickname:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
