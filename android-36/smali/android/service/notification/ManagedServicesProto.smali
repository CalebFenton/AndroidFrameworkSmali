.class public final Landroid/service/notification/ManagedServicesProto;
.super Ljava/lang/Object;
.source "ManagedServicesProto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/ManagedServicesProto$SnoozedServices;,
        Landroid/service/notification/ManagedServicesProto$ServiceProto;
    }
.end annotation


# static fields
.field public static final greylist-max-o APPROVED:J = 0x20b00000002L

.field public static final greylist-max-o CAPTION:J = 0x10900000001L

.field public static final greylist-max-o ENABLED:J = 0x20b00000003L

.field public static final greylist-max-o LIVE_SERVICES:J = 0x20b00000004L

.field public static final greylist-max-o SNOOZED:J = 0x20b00000006L


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
