.class public final Lcom/android/wifi/x/android/hardware/wifi/V1_0/Constants$NanParamSizeLimits;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wifi/x/android/hardware/wifi/V1_0/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NanParamSizeLimits"
.end annotation


# static fields
.field public static final blacklist MAX_PASSPHRASE_LENGTH:I = 0x3f

.field public static final blacklist MIN_PASSPHRASE_LENGTH:I = 0x8


# direct methods
.method public constructor blacklist <init>(Lcom/android/wifi/x/android/hardware/wifi/V1_0/Constants;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/wifi/x/android/hardware/wifi/V1_0/Constants;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
