.class public final Landroid/providers/settings/GlobalSettingsProto$Connectivity;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Connectivity"
.end annotation


# static fields
.field public static final blacklist CHANGE_DELAY:J = 0x10b00000002L

.field public static final blacklist METRICS_BUFFER_SIZE:J = 0x10b00000001L

.field public static final blacklist SAMPLING_INTERVAL_IN_SECONDS:J = 0x10b00000003L


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

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
