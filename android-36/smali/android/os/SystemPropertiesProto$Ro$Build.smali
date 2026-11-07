.class public final Landroid/os/SystemPropertiesProto$Ro$Build;
.super Ljava/lang/Object;
.source "SystemPropertiesProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemPropertiesProto$Ro;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Build"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/SystemPropertiesProto$Ro$Build$Version;
    }
.end annotation


# static fields
.field public static final greylist-max-o DATE:J = 0x10900000001L

.field public static final greylist-max-o DATE_UTC:J = 0x10300000002L

.field public static final greylist-max-o DESCRIPTION:J = 0x10900000003L

.field public static final greylist-max-o DISPLAY_ID:J = 0x10900000004L

.field public static final greylist-max-o HOST:J = 0x10900000005L

.field public static final greylist-max-o ID:J = 0x10900000006L

.field public static final greylist-max-o PRODUCT:J = 0x10900000007L

.field public static final greylist-max-o SYSTEM_ROOT_IMAGE:J = 0x10800000008L

.field public static final greylist-max-o TAGS:J = 0x10900000009L

.field public static final greylist-max-o TYPE:J = 0x1090000000aL

.field public static final greylist-max-o USER:J = 0x1090000000bL

.field public static final greylist-max-o VERSION:J = 0x10b0000000cL


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

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
