.class Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
.super Ljava/lang/Object;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GSMPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cfu"
.end annotation


# instance fields
.field final mOnComplete:Landroid/os/Message;

.field final mSetCfNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cfNumber"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    #@0
    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 138
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    #@5
    .line 139
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    #@7
    .line 137
    return-void
.end method
