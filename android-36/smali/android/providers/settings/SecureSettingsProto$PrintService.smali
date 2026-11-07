.class public final Landroid/providers/settings/SecureSettingsProto$PrintService;
.super Ljava/lang/Object;
.source "SecureSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/SecureSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrintService"
.end annotation


# static fields
.field public static final blacklist DISABLED_PRINT_SERVICES:J = 0x10b00000002L

.field public static final blacklist ENABLED_PRINT_SERVICES:J = 0x10b00000003L

.field public static final blacklist SEARCH_URI:J = 0x10b00000001L


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

    .line 765
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
