.class public final Landroid/providers/settings/SecureSettingsProto$GestureNavigation;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GestureNavigation"
.end annotation


# static fields
.field public static final blacklist BACK_GESTURE_INSET_SCALE_LEFT:J = 0x10b00000001L

.field public static final blacklist BACK_GESTURE_INSET_SCALE_RIGHT:J = 0x10b00000002L


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

    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
