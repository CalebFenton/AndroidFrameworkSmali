.class public final Landroid/providers/settings/GlobalSettingsProto$Network;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Network"
.end annotation


# static fields
.field public static final blacklist ACCESS_TIMEOUT_MS:J = 0x10b0000000fL

.field public static final blacklist AVOID_BAD_WIFI:J = 0x10b00000006L

.field public static final blacklist METERED_MULTIPATH_PREFERENCE:J = 0x10b00000007L

.field public static final blacklist PREFERENCE:J = 0x10b00000001L

.field public static final blacklist PREFERRED_NETWORK_MODE:J = 0x10b00000002L

.field public static final blacklist RECOMMENDATIONS_ENABLED:J = 0x10b0000000aL

.field public static final blacklist RECOMMENDATIONS_PACKAGE:J = 0x10b0000000bL

.field public static final blacklist RECOMMENDATION_REQUEST_TIMEOUT_MS:J = 0x10b0000000cL

.field public static final blacklist RECOMMENDED_NETWORK_EVALUATOR_CACHE_EXPIRY_MS:J = 0x10b00000010L

.field public static final blacklist SCORER_APP:J = 0x10b00000003L

.field public static final blacklist SCORING_PROVISIONED:J = 0x10b0000000eL

.field public static final blacklist SCORING_UI_ENABLED:J = 0x10b00000009L

.field public static final blacklist SWITCH_NOTIFICATION_DAILY_LIMIT:J = 0x10b00000004L

.field public static final blacklist SWITCH_NOTIFICATION_RATE_LIMIT_MILLIS:J = 0x10b00000005L

.field public static final blacklist WATCHLIST_ENABLED:J = 0x10b0000000dL

.field public static final blacklist WATCHLIST_LAST_REPORT_TIME:J = 0x10b00000008L


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

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
