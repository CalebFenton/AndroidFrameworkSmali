.class public final Landroid/os/SystemPropertiesProto$Ro$BootImage;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BootImage"
.end annotation


# static fields
.field public static final greylist-max-o BUILD_DATE:J = 0x10900000001L

.field public static final greylist-max-o BUILD_DATE_UTC:J = 0x10300000002L

.field public static final greylist-max-o BUILD_FINGERPRINT:J = 0x10900000003L


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

    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
