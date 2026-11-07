.class public final Landroid/providers/settings/ConfigSettingsProto$NamespaceProto;
.super Ljava/lang/Object;
.source "ConfigSettingsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/providers/settings/ConfigSettingsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NamespaceProto"
.end annotation


# static fields
.field public static final blacklist NAMESPACE:J = 0x10900000001L

.field public static final blacklist SETTINGS:J = 0x20b00000002L


# direct methods
.method public constructor blacklist <init>(Landroid/providers/settings/ConfigSettingsProto;)V
    .registers 2
    .param p1, "this$0"    # Landroid/providers/settings/ConfigSettingsProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
