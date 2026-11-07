.class public final Lcom/android/server/power/WirelessChargerDetectorProto$VectorProto;
.super Ljava/lang/Object;
.source "WirelessChargerDetectorProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/WirelessChargerDetectorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VectorProto"
.end annotation


# static fields
.field public static final blacklist X:J = 0x10200000001L

.field public static final blacklist Y:J = 0x10200000002L

.field public static final blacklist Z:J = 0x10200000003L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/power/WirelessChargerDetectorProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/WirelessChargerDetectorProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
