.class public Lcom/android/internal/telephony/util/SdkUtil;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/util/SdkUtil$LateSdk;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isAtLeast25Q2()Z
    .registers 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method
