.class final Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;
.super Ljava/lang/Object;
.source "QualifiedNetworksService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/data/QualifiedNetworksService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NetworkValidationRequestData"
.end annotation


# instance fields
.field final blacklist mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

.field final blacklist mNetworkCapability:I


# direct methods
.method private constructor blacklist <init>(ILcom/android/internal/telephony/IIntegerConsumer;)V
    .registers 3
    .param p1, "networkCapability"    # I
    .param p2, "callback"    # Lcom/android/internal/telephony/IIntegerConsumer;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 500
    iput p1, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mNetworkCapability:I

    .line 501
    iput-object p2, p0, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;->mCallback:Lcom/android/internal/telephony/IIntegerConsumer;

    .line 502
    return-void
.end method

.method synthetic constructor blacklist <init>(ILcom/android/internal/telephony/IIntegerConsumer;Landroid/telephony/data/QualifiedNetworksService-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/telephony/data/QualifiedNetworksService$NetworkValidationRequestData;-><init>(ILcom/android/internal/telephony/IIntegerConsumer;)V

    return-void
.end method
