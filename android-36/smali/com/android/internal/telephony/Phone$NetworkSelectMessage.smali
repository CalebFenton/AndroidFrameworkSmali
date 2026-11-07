.class public Lcom/android/internal/telephony/Phone$NetworkSelectMessage;
.super Ljava/lang/Object;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NetworkSelectMessage"
.end annotation


# instance fields
.field public blacklist message:Landroid/os/Message;

.field public blacklist operatorAlphaLong:Ljava/lang/String;

.field public blacklist operatorAlphaShort:Ljava/lang/String;

.field public blacklist operatorNumeric:Ljava/lang/String;


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
