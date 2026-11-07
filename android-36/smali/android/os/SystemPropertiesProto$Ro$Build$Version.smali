.class public final Landroid/os/SystemPropertiesProto$Ro$Build$Version;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro$Build;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Version"
.end annotation


# static fields
.field public static final greylist-max-o BASE_OS:J = 0x10900000001L

.field public static final greylist-max-o CODENAME:J = 0x10900000002L

.field public static final greylist-max-o INCREMENTAL:J = 0x10900000003L

.field public static final greylist-max-o PREVIEW_SDK:J = 0x10500000004L

.field public static final greylist-max-o RELEASE:J = 0x10900000005L

.field public static final greylist-max-o SDK:J = 0x10500000006L

.field public static final greylist-max-o SECURITY_PATCH:J = 0x10900000007L


# direct methods
.method public constructor blacklist <init>(Landroid/os/SystemPropertiesProto$Ro$Build;)V
    .registers 2
    .param p1, "this$2"    # Landroid/os/SystemPropertiesProto$Ro$Build;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
