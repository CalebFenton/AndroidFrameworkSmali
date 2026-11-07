.class Landroid/telephony/ims/compat/feature/RcsFeature$1;
.super Lcom/android/ims/internal/IImsRcsFeature$Stub;
.source "RcsFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/compat/feature/RcsFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/compat/feature/RcsFeature;)V
    .registers 2
    .param p1, "this$0"    # Landroid/telephony/ims/compat/feature/RcsFeature;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Lcom/android/ims/internal/IImsRcsFeature$Stub;-><init>()V

    return-void
.end method
