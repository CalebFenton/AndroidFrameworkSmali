.class public final Landroid/providers/settings/SystemSettingsProto$Mouse;
.super Ljava/lang/Object;
.source "SystemSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SystemSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Mouse"
.end annotation


# static fields
.field public static final blacklist POINTER_ACCELERATION_ENABLED:J = 0x10b00000004L

.field public static final blacklist REVERSE_VERTICAL_SCROLLING:J = 0x10b00000001L

.field public static final blacklist SCROLLING_ACCELERATION:J = 0x10b00000003L

.field public static final blacklist SCROLLING_SPEED:J = 0x10b00000005L

.field public static final blacklist SWAP_PRIMARY_BUTTON:J = 0x10b00000002L


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

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
