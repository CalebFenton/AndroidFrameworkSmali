.class Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;
.super Ljava/lang/Object;
.source "GsmCdmaPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmCdmaPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cfu"
.end annotation


# instance fields
.field final blacklist mOnComplete:Landroid/os/Message;

.field final blacklist mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor greylist-max-r <init>(Ljava/lang/String;Landroid/os/Message;)V
    .registers 3

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput-object p1, p0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    .line 269
    iput-object p2, p0, Lcom/android/internal/telephony/GsmCdmaPhone$Cfu;->mOnComplete:Landroid/os/Message;

    return-void
.end method
