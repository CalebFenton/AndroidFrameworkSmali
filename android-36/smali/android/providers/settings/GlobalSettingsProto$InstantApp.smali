.class public final Landroid/providers/settings/GlobalSettingsProto$InstantApp;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InstantApp"
.end annotation


# static fields
.field public static final blacklist DEXOPT_ENABLED:J = 0x10b00000001L

.field public static final blacklist EPHEMERAL_COOKIE_MAX_SIZE_BYTES:J = 0x10b00000002L

.field public static final blacklist INSTALLED_MAX_CACHE_PERIOD:J = 0x10b00000004L

.field public static final blacklist INSTALLED_MIN_CACHE_PERIOD:J = 0x10b00000003L

.field public static final blacklist UNINSTALLED_MAX_CACHE_PERIOD:J = 0x10b00000006L

.field public static final blacklist UNINSTALLED_MIN_CACHE_PERIOD:J = 0x10b00000005L


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

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
