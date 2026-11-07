.class public final Landroid/os/SystemPropertiesProto$Ro$Product$Vendor;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro$Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Vendor"
.end annotation


# static fields
.field public static final greylist-max-o BRAND:J = 0x10900000001L

.field public static final greylist-max-o DEVICE:J = 0x10900000002L

.field public static final greylist-max-o MANUFACTURER:J = 0x10900000003L

.field public static final greylist-max-o MODEL:J = 0x10900000004L

.field public static final greylist-max-o NAME:J = 0x10900000005L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto$Ro$Product;)V
    .registers 2
    .param p1, "this$2"    # Landroid/os/SystemPropertiesProto$Ro$Product;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
