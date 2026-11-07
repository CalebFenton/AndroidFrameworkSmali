.class public final Landroid/os/SystemPropertiesProto$Ro$Telephony;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Telephony"
.end annotation


# static fields
.field public static final greylist-max-o CALL_RING_MULTIPLE:J = 0x10800000001L

.field public static final greylist-max-o DEFAULT_CDMA_SUB:J = 0x10500000002L

.field public static final greylist-max-o DEFAULT_NETWORK:J = 0x10500000003L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto$Ro;)V
    .registers 2
    .param p1, "this$1"    # Landroid/os/SystemPropertiesProto$Ro;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 797
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
