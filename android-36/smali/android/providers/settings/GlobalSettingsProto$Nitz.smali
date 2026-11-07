.class public final Landroid/providers/settings/GlobalSettingsProto$Nitz;
.super Ljava/lang/Object;
.source "GlobalSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/GlobalSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Nitz"
.end annotation


# static fields
.field public static final blacklist NETWORK_DISCONNECT_RETENTION:J = 0x10b00000003L

.field public static final blacklist UPDATE_DIFF:J = 0x10b00000001L

.field public static final blacklist UPDATE_SPACING:J = 0x10b00000002L


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

    .line 903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
