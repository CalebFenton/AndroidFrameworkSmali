.class final Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;
.super Ljava/lang/Object;
.source "DatagramReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DatagramReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatagramReceiverHandlerRequest"
.end annotation


# instance fields
.field public blacklist argument:Ljava/lang/Object;

.field public blacklist phone:Lcom/android/internal/telephony/Phone;

.field public blacklist result:Ljava/lang/Object;

.field public blacklist subId:I


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->argument:Ljava/lang/Object;

    .line 176
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->phone:Lcom/android/internal/telephony/Phone;

    .line 177
    iput p3, p0, Lcom/android/internal/telephony/satellite/DatagramReceiver$DatagramReceiverHandlerRequest;->subId:I

    return-void
.end method
