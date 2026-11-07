.class public final Landroid/providers/settings/SecureSettingsProto$ReduceBrightColors;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ReduceBrightColors"
.end annotation


# static fields
.field public static final blacklist ACTIVATED:J = 0x10b00000001L

.field public static final blacklist LEVEL:J = 0x10b00000002L

.field public static final blacklist PERSIST_ACROSS_REBOOTS:J = 0x10b00000003L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SecureSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SecureSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 790
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
