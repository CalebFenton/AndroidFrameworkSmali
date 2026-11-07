.class public final Landroid/nfc/cardemulation/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static blacklist dumpDebugComponentName(Landroid/content/ComponentName;Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p0, "componentName"    # Landroid/content/ComponentName;
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    .line 32
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 33
    .local v0, "token":J
    const-wide v2, 0x10900000001L

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 34
    const-wide v2, 0x10900000002L

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 35
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 36
    return-void
.end method
