.class Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;
.super Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;
.source "MmTelFeatureCompatAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;->queryCapabilityConfiguration(II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$returnValue:[I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter;IILjava/util/concurrent/CountDownLatch;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 305
    iput-object p5, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->val$returnValue:[I

    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$ConfigListener;-><init>(IILjava/util/concurrent/CountDownLatch;)V

    return-void
.end method


# virtual methods
.method public blacklist getFeatureValueReceived(I)V
    .registers 3

    .line 308
    iget-object p0, p0, Lcom/android/internal/telephony/ims/MmTelFeatureCompatAdapter$3;->val$returnValue:[I

    const/4 v0, 0x0

    aput p1, p0, v0

    return-void
.end method
