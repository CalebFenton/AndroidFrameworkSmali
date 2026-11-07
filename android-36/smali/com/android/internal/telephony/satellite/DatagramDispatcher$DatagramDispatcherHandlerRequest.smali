.class final Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;
.super Ljava/lang/Object;
.source "DatagramDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/satellite/DatagramDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DatagramDispatcherHandlerRequest"
.end annotation


# instance fields
.field public blacklist argument:Ljava/lang/Object;

.field public blacklist phone:Lcom/android/internal/telephony/Phone;

.field public blacklist result:Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p1, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->argument:Ljava/lang/Object;

    .line 217
    iput-object p2, p0, Lcom/android/internal/telephony/satellite/DatagramDispatcher$DatagramDispatcherHandlerRequest;->phone:Lcom/android/internal/telephony/Phone;

    return-void
.end method
