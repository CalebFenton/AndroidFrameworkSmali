.class public final Landroid/providers/settings/GlobalSettingsProto$CaptivePortal;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CaptivePortal"
.end annotation


# static fields
.field public static final blacklist DETECTION_ENABLED:J = 0x10b00000002L

.field public static final blacklist FALLBACK_URL:J = 0x10b00000006L

.field public static final blacklist HTTPS_URL:J = 0x10b00000004L

.field public static final blacklist HTTP_URL:J = 0x10b00000005L

.field public static final blacklist MODE:J = 0x10b00000001L

.field public static final blacklist OTHER_FALLBACK_URLS:J = 0x10b00000007L

.field public static final blacklist SERVER:J = 0x10b00000003L

.field public static final blacklist USER_AGENT:J = 0x10b00000009L

.field public static final blacklist USE_HTTPS:J = 0x10b00000008L


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

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
