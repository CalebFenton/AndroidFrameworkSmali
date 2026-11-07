.class public final Landroid/providers/settings/SystemSettingsProto$Lockscreen;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Lockscreen"
.end annotation


# static fields
.field public static final blacklist DISABLED:J = 0x10b00000002L

.field public static final blacklist SOUNDS_ENABLED:J = 0x10b00000001L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/SystemSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/SystemSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
