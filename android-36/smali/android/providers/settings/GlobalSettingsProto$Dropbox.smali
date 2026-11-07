.class public final Landroid/providers/settings/GlobalSettingsProto$Dropbox;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Dropbox"
.end annotation


# static fields
.field public static final blacklist AGE_SECONDS:J = 0x10b00000001L

.field public static final blacklist MAX_FILES:J = 0x10b00000002L

.field public static final blacklist QUOTA_KB:J = 0x10b00000003L

.field public static final blacklist QUOTA_PERCENT:J = 0x10b00000004L

.field public static final blacklist RESERVE_PERCENT:J = 0x10b00000005L

.field public static final blacklist SETTINGS:J = 0x20b00000006L


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

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
