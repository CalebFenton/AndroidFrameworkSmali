.class Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkSelectMessage"
.end annotation


# instance fields
.field public message:Landroid/os/Message;

.field public operatorAlphaLong:Ljava/lang/String;

.field public operatorAlphaShort:Ljava/lang/String;

.field public operatorNumeric:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/Phone$NetworkSelectMessage;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/Phone$NetworkSelectMessage;-><init>()V

    #@3
    return-void
.end method
