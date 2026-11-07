.class public final Landroid/providers/settings/GlobalSettingsProto$Sys;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Sys"
.end annotation


# static fields
.field public static final blacklist FREE_STORAGE_LOG_INTERVAL_MINS:J = 0x10b00000001L

.field public static final blacklist STORAGE_CACHE_MAX_BYTES:J = 0x10b00000006L

.field public static final blacklist STORAGE_CACHE_PERCENTAGE:J = 0x10b00000005L

.field public static final blacklist STORAGE_FULL_THRESHOLD_BYTES:J = 0x10b00000004L

.field public static final blacklist STORAGE_THRESHOLD_MAX_BYTES:J = 0x10b00000003L

.field public static final blacklist STORAGE_THRESHOLD_PERCENTAGE:J = 0x10b00000002L

.field public static final blacklist UIDCPUPOWER:J = 0x10b00000008L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/GlobalSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/GlobalSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
