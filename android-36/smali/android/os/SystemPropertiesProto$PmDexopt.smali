.class public final Landroid/os/SystemPropertiesProto$PmDexopt;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmDexopt"
.end annotation


# static fields
.field public static final greylist-max-o AB_OTA:J = 0x10900000001L

.field public static final greylist-max-o BG_DEXOPT:J = 0x10900000002L

.field public static final greylist-max-o BOOT:J = 0x10900000003L

.field public static final greylist-max-o FIRST_BOOT:J = 0x10900000004L

.field public static final greylist-max-o INSTALL:J = 0x10900000005L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/SystemPropertiesProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
